/*
The MIT License (MIT)

Copyright (c) 2015 Los Andes University

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/
package co.edu.uniandes.csw.artwork.tests.rest;

import co.edu.uniandes.csw.artwork.dtos.detail.QualifyDetailDTO;
import co.edu.uniandes.csw.artwork.dtos.minimum.ArtworkDTO;
import co.edu.uniandes.csw.auth.model.UserDTO;
import co.edu.uniandes.csw.auth.security.JWT;
import co.edu.uniandes.csw.artwork.entities.QualifyEntity;
import co.edu.uniandes.csw.artwork.dtos.minimum.QualifyDTO;
import co.edu.uniandes.csw.artwork.entities.ArtworkEntity;
import co.edu.uniandes.csw.artwork.entities.ClientEntity;
import co.edu.uniandes.csw.artwork.resources.QualifyResource;
import co.edu.uniandes.csw.artwork.tests.Utils;
import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.transaction.UserTransaction;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Cookie;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;
import org.codehaus.jackson.map.ObjectMapper;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.arquillian.test.api.ArquillianResource;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.spec.WebArchive;
import org.jboss.shrinkwrap.resolver.api.maven.Maven;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import uk.co.jemos.podam.api.PodamFactory;
import uk.co.jemos.podam.api.PodamFactoryImpl;

/*
 * Testing URI: qualifys/
 */
@RunWith(Arquillian.class)
public class QualifyTest {

    private WebTarget target;
    private final String apiPath = Utils.apiPath;
    private final String username = Utils.username;
    private final String password = Utils.password;
    PodamFactory factory = new PodamFactoryImpl();

    private final int Ok = Status.OK.getStatusCode();
    private final int Created = Status.CREATED.getStatusCode();
    private final int OkWithoutContent = Status.NO_CONTENT.getStatusCode();

    private final static List<QualifyEntity> oraculo = new ArrayList<>();

    private final String qualifyPath = "qualifys";
    private ArtworkEntity fatherEntity1;
    private ClientEntity fatherClientEntity;
    private List<ClientEntity> clients = new ArrayList<ClientEntity>();

    @ArquillianResource
    private URL deploymentURL;

    @Deployment
    public static WebArchive createDeployment() {
        return ShrinkWrap.create(WebArchive.class)
                // Se agrega las dependencias
                .addAsLibraries(Maven.resolver().loadPomFromFile("pom.xml")
                        .importRuntimeDependencies().resolve()
                        .withTransitivity().asFile())
                // Se agregan los compilados de los paquetes de servicios
                .addPackage(QualifyResource.class.getPackage())
                // El archivo que contiene la configuracion a la base de datos.
                .addAsResource("META-INF/persistence.xml", "META-INF/persistence.xml")
                // El archivo beans.xml es necesario para injeccion de dependencias.
                .addAsWebInfResource(new File("src/main/webapp/WEB-INF/beans.xml"))
                // El archivo shiro.ini es necesario para injeccion de dependencias
                .addAsWebInfResource(new File("src/main/webapp/WEB-INF/shiro.ini"))
                // El archivo web.xml es necesario para el despliegue de los servlets
                .setWebXML(new File("src/main/webapp/WEB-INF/web.xml"));
    }

    private WebTarget createWebTarget() {
        return ClientBuilder.newClient().target(deploymentURL.toString()).path(apiPath);
    }

    @PersistenceContext(unitName = "ArtworkPU")
    private EntityManager em;

    @Inject
    private UserTransaction utx;

    private void clearData() {
        em.createQuery("delete from QualifyEntity").executeUpdate();
        em.createQuery("delete from ClientEntity").executeUpdate();
        em.createQuery("delete from ArtworkEntity").executeUpdate();
        oraculo.clear();
    }

   /**
     * Datos iniciales para el correcto funcionamiento de las pruebas.
     *
     * @generated
     */
    public void insertData() {
        fatherEntity1 = factory.manufacturePojo(ArtworkEntity.class);
        fatherEntity1.setId(1L);
        em.persist(fatherEntity1);
        
        fatherClientEntity = factory.manufacturePojo(ClientEntity.class);
        fatherClientEntity.setId(9997L);
        em.persist(fatherClientEntity);
              
        for (int i = 0; i < 3; i++) {
            ClientEntity client = factory.manufacturePojo(ClientEntity.class);
            client.setId(new Long(i+88888));
            em.persist(client);
            
            QualifyEntity entity = factory.manufacturePojo(QualifyEntity.class);
            entity.setArtwork(fatherEntity1);
            entity.setClient(client);
            em.persist(entity);
            oraculo.add(entity);
        }
    }

    /**
     * Configuración inicial de la prueba.
     *
     * @generated
     */
    @Before
    public void setUpTest() {
        try {
            utx.begin();
            clearData();
            insertData();
            utx.commit();
        } catch (Exception e) {
            e.printStackTrace();
            try {
                utx.rollback();
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }
        target = createWebTarget()
                .path(qualifyPath);
    }

    /**
     * Login para poder consultar los diferentes servicios
     *
     * @param username Nombre de usuario
     * @param password Clave del usuario
     * @return Cookie con información de la sesión del usuario
     * @generated
     */
    public Cookie login(String username, String password) {
        UserDTO user = new UserDTO();
        user.setUserName(username);
        user.setPassword(password);
        user.setRememberMe(true);
        Response response = createWebTarget().path("users").path("login").request()
                .post(Entity.entity(user, MediaType.APPLICATION_JSON));
        if (response.getStatus() == Ok) {
            return response.getCookies().get(JWT.cookieName);
        } else {
            return null;
        }
    }

    /**
     * Prueba para crear un Qualify
     *
     * @generated
     */
    @Test
    public void createQualifyTest() throws IOException {
        QualifyDetailDTO qualify = factory.manufacturePojo(QualifyDetailDTO.class);
        ArtworkDTO art = new ArtworkDTO();
        art.setId(fatherEntity1.getId());
        qualify.setArtwork(art);
        Cookie cookieSessionId = login(username, password);

        Response response = target
            .request().cookie(cookieSessionId)
            .post(Entity.entity(qualify, MediaType.APPLICATION_JSON));

        QualifyDetailDTO  qualifyTest = (QualifyDetailDTO) response.readEntity(QualifyDetailDTO.class);

        Assert.assertEquals(Created, response.getStatus());

        Assert.assertEquals(qualify.getScore(), qualifyTest.getScore());
        Assert.assertEquals(qualify.getMessage(), qualifyTest.getMessage());

        QualifyEntity entity = em.find(QualifyEntity.class, qualifyTest.getId());
        Assert.assertNotNull(entity);
    }

    
    /**
     * Prueba para consultar la lista de Qualifys
     *
     * @generated
     */
    @Test
    public void qualifyScoreTest() throws IOException {
        Cookie cookieSessionId = login(username, password);
  
        String score = target
            .path(oraculo.get(0).getArtwork().getId().toString())
            .path("score")
            .request().cookie(cookieSessionId).get(String.class);

        Assert.assertTrue(new Long(score) >0);
    }
    
    /**
     * Prueba para consultar la lista de Qualiefies
     *
     */
    @Test
    public void listQualifyTest() throws IOException {
        Cookie cookieSessionId = login(username, password);

        Response response = target
            .path(oraculo.get(0).getArtwork().getId().toString())
            .request().cookie(cookieSessionId).get();

        String listQualiefies = response.readEntity(String.class);
        List<QualifyDTO> listTest = new ObjectMapper().readValue(listQualiefies, List.class);
        Assert.assertEquals(Ok, response.getStatus());
        Assert.assertEquals(3, listTest.size());
    }

}
