<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>HSD</fullName>
        <description>High Stake Deal</description>
        <protected>false</protected>
        <recipients>
            <recipient>saianurag@sf.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/MarketingProductInquiryResponse</template>
    </alerts>
    <fieldUpdates>
        <fullName>Bronze_flag</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;bronze&quot;</formula>
        <name>Bronze flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Close_Low_Value_Deal</fullName>
        <field>StageName</field>
        <literalValue>Closed Lost</literalValue>
        <name>Close Low Value Deal</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>GM</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;GM&quot;</formula>
        <name>GM</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Gold</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;Gold&quot;</formula>
        <name>Gold</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Legend</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;Legend&quot;</formula>
        <name>Legend</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Platinum</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;Pt&quot;</formula>
        <name>Platinum</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Silver_flag</fullName>
        <field>AutorabitExtId__c</field>
        <formula>&quot;Silver&quot;</formula>
        <name>Silver flag</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Bronze Deal</fullName>
        <actions>
            <name>Bronze_flag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>equals</operation>
            <value>50000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Check for Trivial Deal</fullName>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>500</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
        <workflowTimeTriggers>
            <actions>
                <name>Close_Low_Value_Deal</name>
                <type>FieldUpdate</type>
            </actions>
            <timeLength>30</timeLength>
            <workflowTimeTriggerUnit>Days</workflowTimeTriggerUnit>
        </workflowTimeTriggers>
    </rules>
    <rules>
        <fullName>Diamond</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
	<rules>
        <fullName>Diamond1False</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
	<rules>
        <fullName>Diamond2False</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
	<rules>
        <fullName>Diamond3false</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
	<rules>
        <fullName>Diamond4false</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Epic</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>750000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>1000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Gold Deal</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Gold</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>100000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>300000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>High Stake Deal</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>10000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>50000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Legend</fullName>
        <actions>
            <name>Legend</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>1000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>5000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Platinum</fullName>
        <actions>
            <name>Platinum</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>300000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>500000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Diamond5False</fullName>
        <actions>
            <name>Silver_flag</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>True</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>equals</operation>
            <value>100000</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Diamond6false</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>GM</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>5000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>8000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Diamond7False</fullName>
        <actions>
            <name>HSD</name>
            <type>Alert</type>
        </actions>
        <active>false</active>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>greaterOrEqual</operation>
            <value>9000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.Amount</field>
            <operation>lessThan</operation>
            <value>11000000</value>
        </criteriaItems>
        <criteriaItems>
            <field>Contact.IsClosed</field>
            <operation>notEqual</operation>
            <value>False</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
