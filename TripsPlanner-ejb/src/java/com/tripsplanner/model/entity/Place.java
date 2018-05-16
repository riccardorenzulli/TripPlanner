/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tripsplanner.model.entity;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import org.json.JSONArray;
import org.json.JSONObject;

/**
 *
 * @author the-silent-fox
 */

public class Place {


    private String name;
    private String address;
    private float lat;
    private float lng;
    private String googlePlaceID;
    private String googleID;
    /*opening hours?*/
    private String photosUrl; //only the first one
    private float rating;
    private List<String> types;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public float getLat() {
        return lat;
    }

    public void setLat(float lat) {
        this.lat = lat;
    }

    public float getLng() {
        return lng;
    }

    public void setLng(float lng) {
        this.lng = lng;
    }

    public String getGooglePlaceID() {
        return googlePlaceID;
    }

    public void setGooglePlaceID(String googlePlaceID) {
        this.googlePlaceID = googlePlaceID;
    }

    public String getGoogleID() {
        return googleID;
    }

    public void setGoogleID(String googleID) {
        this.googleID = googleID;
    }

    public String getPhotosUrl() {
        return photosUrl;
    }

    public void setPhotosUrl(String photosUrl) {
        this.photosUrl = photosUrl;
    }

    public List<String> getTypes() {
        return types;
    }

    public void setTypes(List<String> types) {
        this.types = types;
    }

    public float getRating() {
        return rating;
    }

    public void setRating(float rating) {
        this.rating = rating;
    }
    
    public static Place fromJsonToPlace(JSONObject jsonObj) {
        Place place = new Place();
        
        place.setName(jsonObj.getString("name"));
        place.setAddress(jsonObj.getString("formatted_address"));
        place.setLat(jsonObj.getJSONObject("geometry").getJSONObject("location").getFloat("lat"));
        place.setLng(jsonObj.getJSONObject("geometry").getJSONObject("location").getFloat("lng"));
        place.setGoogleID(jsonObj.getString("id"));
        place.setGooglePlaceID(jsonObj.getString("place_id"));
        place.setPhotosUrl(jsonObj.getJSONArray("photos").getJSONObject(0).getString("photo_reference"));
        place.setRating(jsonObj.getFloat("rating"));
        
        JSONArray typesJson = jsonObj.getJSONArray("types");
        List<String> typesList = new ArrayList<String>();
        for(int i=0; i<typesJson.length(); i++)
            typesList.add(typesJson.getString(i));
        place.setTypes(typesList);
        
        return place;
    }
    
    public String toString() {
        return "Place:\n"+this.name+" - "+this.address+" - "+this.lat+" - "+this.lng+"\n"+this.googleID+"\n"+this.googlePlaceID+"\n"+this.photosUrl+"\nRating "+this.rating;
    }
    
    
}