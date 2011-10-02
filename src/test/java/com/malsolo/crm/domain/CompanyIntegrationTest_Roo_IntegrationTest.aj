// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.malsolo.crm.domain;

import com.malsolo.crm.domain.CompanyDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CompanyIntegrationTest_Roo_IntegrationTest {
    
    declare @type: CompanyIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: CompanyIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: CompanyIntegrationTest: @Transactional;
    
    @Autowired
    private CompanyDataOnDemand CompanyIntegrationTest.dod;
    
    @Test
    public void CompanyIntegrationTest.testCountCompanys() {
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", dod.getRandomCompany());
        long count = com.malsolo.crm.domain.Company.countCompanys();
        org.junit.Assert.assertTrue("Counter for 'Company' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void CompanyIntegrationTest.testFindCompany() {
        com.malsolo.crm.domain.Company obj = dod.getRandomCompany();
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", obj);
        java.lang.Long id = obj.getCompanyId();
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to provide an identifier", id);
        obj = com.malsolo.crm.domain.Company.findCompany(id);
        org.junit.Assert.assertNotNull("Find method for 'Company' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'Company' returned the incorrect identifier", id, obj.getCompanyId());
    }
    
    @Test
    public void CompanyIntegrationTest.testFindAllCompanys() {
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", dod.getRandomCompany());
        long count = com.malsolo.crm.domain.Company.countCompanys();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'Company', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<com.malsolo.crm.domain.Company> result = com.malsolo.crm.domain.Company.findAllCompanys();
        org.junit.Assert.assertNotNull("Find all method for 'Company' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'Company' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void CompanyIntegrationTest.testFindCompanyEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", dod.getRandomCompany());
        long count = com.malsolo.crm.domain.Company.countCompanys();
        if (count > 20) count = 20;
        java.util.List<com.malsolo.crm.domain.Company> result = com.malsolo.crm.domain.Company.findCompanyEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'Company' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'Company' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void CompanyIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", dod.getRandomCompany());
        com.malsolo.crm.domain.Company obj = dod.getNewTransientCompany(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'Company' identifier to be null", obj.getCompanyId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'Company' identifier to no longer be null", obj.getCompanyId());
    }
    
    @Test
    public void CompanyIntegrationTest.testRemove() {
        com.malsolo.crm.domain.Company obj = dod.getRandomCompany();
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to initialize correctly", obj);
        java.lang.Long id = obj.getCompanyId();
        org.junit.Assert.assertNotNull("Data on demand for 'Company' failed to provide an identifier", id);
        obj = com.malsolo.crm.domain.Company.findCompany(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'Company' with identifier '" + id + "'", com.malsolo.crm.domain.Company.findCompany(id));
    }
    
}
