<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="ConfigWebApp.Azure" generation="1" functional="0" release="0" Id="8c1d061a-4d5d-4863-8661-2a44c81a0a67" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="ConfigWebApp.AzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="ConfigWebApp:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/LB:ConfigWebApp:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="ConfigWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/MapConfigWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="ConfigWebAppInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/MapConfigWebAppInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:ConfigWebApp:Endpoint1">
          <toPorts>
            <inPortMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebApp/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapConfigWebApp:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebApp/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapConfigWebAppInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebAppInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="ConfigWebApp" generation="1" functional="0" release="0" software="D:\Prototype\redis-sharp-master\ConfigWebApp.Azure\csx\Release\roles\ConfigWebApp" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;ConfigWebApp&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;ConfigWebApp&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebAppInstances" />
            <sCSPolicyUpdateDomainMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebAppUpgradeDomains" />
            <sCSPolicyFaultDomainMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebAppFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyUpdateDomain name="ConfigWebAppUpgradeDomains" defaultPolicy="[5,5,5]" />
        <sCSPolicyFaultDomain name="ConfigWebAppFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="ConfigWebAppInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="8c6d7be3-da06-4812-aeca-231ec538296e" ref="Microsoft.RedDog.Contract\ServiceContract\ConfigWebApp.AzureContract@ServiceDefinition">
      <interfacereferences>
        <interfaceReference Id="70580f43-c313-4da6-96d0-c0ca947c515c" ref="Microsoft.RedDog.Contract\Interface\ConfigWebApp:Endpoint1@ServiceDefinition">
          <inPort>
            <inPortMoniker name="/ConfigWebApp.Azure/ConfigWebApp.AzureGroup/ConfigWebApp:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>