<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Populate_Author_Name</fullName>
        <field>Name</field>
        <formula>First_Name__c + &apos; &apos; +  Last_Name__c</formula>
        <name>Populate Author Name</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Populate Author Name</fullName>
        <actions>
            <name>Populate_Author_Name</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <formula>OR( ISCHANGED( First_Name__c ) , ISCHANGED( Last_Name__c ))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
