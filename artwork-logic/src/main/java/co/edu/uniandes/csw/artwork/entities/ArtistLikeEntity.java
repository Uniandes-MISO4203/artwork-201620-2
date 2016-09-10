/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.uniandes.csw.artwork.entities;

import co.edu.uniandes.csw.crud.spi.entity.BaseEntity;
import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import uk.co.jemos.podam.common.PodamExclude;

/**
 *
 * @author le.florez602
 */
@Entity
public class ArtistLikeEntity extends BaseEntity implements Serializable {
    
    @PodamExclude
    @ManyToOne
    private ArtistEntity artist;
    
    @PodamExclude
    @ManyToOne
    private ClientEntity client;

    public ArtistEntity getArtist() {
        return artist;
    }

    public void setArtist(ArtistEntity artist) {
        this.artist = artist;
    }

    public ClientEntity getClient() {
        return client;
    }

    public void setClient(ClientEntity client) {
        this.client = client;
    }
    
}