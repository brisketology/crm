// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.crm.domain;

import com.malsolo.crm.domain.Customer;
import java.lang.String;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.OneToMany;

privileged aspect Company_Roo_DbManaged {
    
    @OneToMany(mappedBy = "companyId")
    private Set<Customer> Company.customers;
    
    @Column(name = "COMPANY", length = 255)
    private String Company.company;
    
    public Set<Customer> Company.getCustomers() {
        return this.customers;
    }
    
    public void Company.setCustomers(Set<Customer> customers) {
        this.customers = customers;
    }
    
    public String Company.getCompany() {
        return this.company;
    }
    
    public void Company.setCompany(String company) {
        this.company = company;
    }
    
}