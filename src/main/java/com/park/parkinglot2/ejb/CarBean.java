/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.park.parkinglot2.ejb;

import com.park.parkinglot2.common.CarDetails;
import com.park.parkinglot2.entity.Car;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author ASUS
 */
@Stateless
public class CarBean {

    private static final Logger LOG = Logger.getLogger(CarBean.class.getName());
    
    @PersistenceContext
    private EntityManager em;
    
    public List <Car> getAllCars(){
        LOG.info("getAllCars");
        try{
            Query query= em.createQuery("SELECT c FROM Car c");
            List<Car> cars= (List<Car>) query.getResultList();
            return cars;
        }
        catch (Exception ex){
            throw new EJBException(ex);
        }
    }
    
    private List<CarDetails> copyCarsToDetails(List <Car> cars){
        List <CarDetails> detailsList = new ArrayList<>();
        for(Car car:cars){
            CarDetails carDetails=new CarDetails(car.getId(),
                    car.getLicensePlate(),
                    car.getParkingSpot(),
                    car.getUser().getUsername());
            detailsList.add(carDetails);
        }
        return detailsList;
    }
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
