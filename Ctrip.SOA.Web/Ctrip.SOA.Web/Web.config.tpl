﻿<?xml version="1.0" encoding="utf-8"?>
<!--
  有关如何配置 ASP.NET 应用程序的详细信息，请访问
  http://go.microsoft.com/fwlink/?LinkId=152368
  -->
<configuration>
 
  <appSettings configSource="Config\\AppSetting.config"/>
  <system.web>
    <compilation debug="true" targetFramework="4.0" />
    <authentication mode="Forms">
      <forms loginUrl="~/Account/Login" timeout="2880" />
    </authentication>
    <pages>
      <namespaces>
        <add namespace="System.Web.Helpers" />
        <add namespace="System.Web.Mvc" />
        <add namespace="System.Web.Mvc.Ajax" />
        <add namespace="System.Web.Mvc.Html" />
        <add namespace="System.Web.Optimization" />
        <add namespace="System.Web.Routing" />
        <add namespace="System.Web.WebPages" />
      </namespaces>
    </pages>
    <profile defaultProvider="DefaultProfileProvider">
      <providers>
        <add name="DefaultProfileProvider" type="System.Web.Providers.DefaultProfileProvider, System.Web.Providers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" connectionStringName="DefaultConnection" applicationName="/" />
      </providers>
    </profile>
    <membership defaultProvider="DefaultMembershipProvider">
      <providers>
        <add name="DefaultMembershipProvider" type="System.Web.Providers.DefaultMembershipProvider, System.Web.Providers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" connectionStringName="DefaultConnection" enablePasswordRetrieval="false" enablePasswordReset="true" requiresQuestionAndAnswer="false" requiresUniqueEmail="false" maxInvalidPasswordAttempts="5" minRequiredPasswordLength="6" minRequiredNonalphanumericCharacters="0" passwordAttemptWindow="10" applicationName="/" />
      </providers>
    </membership>
    <roleManager enabled="true" defaultProvider="CustomRoleProvider">
      <providers>
        <clear/>
        <add name="CustomRoleProvider" type="Ctrip.SOA.Web.Security.CustomRoleProvider, Ctrip.SOA.Web"
             enablePasswordRetrieval="false" enablePasswordReset="true" requiresQuestionAndAnswer="false" writeExceptionsToEventLog="false" />
      </providers>
    </roleManager>
    <!--
            If you are deploying to a cloud environment that has multiple web server instances,
            you should change session state mode from "InProc" to "Custom". In addition,
            change the connection string named "DefaultConnection" to connect to an instance
            of SQL Server (including SQL Azure and SQL  Compact) instead of to SQL Server Express.
      -->
    <sessionState mode="InProc" customProvider="DefaultSessionProvider">
      <providers>
        <add name="DefaultSessionProvider" type="System.Web.Providers.DefaultSessionStateProvider, System.Web.Providers, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" connectionStringName="DefaultConnection" />
      </providers>
    </sessionState>
  </system.web>
  <system.serviceModel>
    <bindings configSource="Config\\ServiceModel.Bindings.config" />
    <behaviors>
      <endpointBehaviors>
        <behavior name="ServiceViewEventBehavior">
          <dataContractSerializer maxItemsInObjectGraph="2147483647" />
          <!--序列化配置-->
        </behavior>
      </endpointBehaviors>
    </behaviors>
    <client configSource="Config\\ServiceModel.Client.config" />
  </system.serviceModel>
  <system.webServer>
    <validation validateIntegratedModeConfiguration="false" />
    <modules runAllManagedModulesForAllRequests="true" />
    <handlers>
      <remove name="ExtensionlessUrlHandler-ISAPI-4.0_32bit" />
      <remove name="ExtensionlessUrlHandler-ISAPI-4.0_64bit" />
      <remove name="ExtensionlessUrlHandler-Integrated-4.0" />
      <add name="ExtensionlessUrlHandler-ISAPI-4.0_32bit" path="*." verb="GET,HEAD,POST,DEBUG,PUT,DELETE,PATCH,OPTIONS" modules="IsapiModule" scriptProcessor="%windir%\Microsoft.NET\Framework\v4.0.30319\aspnet_isapi.dll" preCondition="classicMode,runtimeVersionv4.0,bitness32" responseBufferLimit="0" />
      <add name="ExtensionlessUrlHandler-ISAPI-4.0_64bit" path="*." verb="GET,HEAD,POST,DEBUG,PUT,DELETE,PATCH,OPTIONS" modules="IsapiModule" scriptProcessor="%windir%\Microsoft.NET\Framework64\v4.0.30319\aspnet_isapi.dll" preCondition="classicMode,runtimeVersionv4.0,bitness64" responseBufferLimit="0" />
      <add name="ExtensionlessUrlHandler-Integrated-4.0" path="*." verb="GET,HEAD,POST,DEBUG,PUT,DELETE,PATCH,OPTIONS" type="System.Web.Handlers.TransferRequestHandler" preCondition="integratedMode,runtimeVersionv4.0" />
    </handlers>
  </system.webServer>
  <runtime>
    <assemblyBinding xmlns="urn:schemas-microsoft-com:asm.v1">
      <dependentAssembly>
        <assemblyIdentity name="System.Web.Helpers" publicKeyToken="31bf3856ad364e35" />
        <bindingRedirect oldVersion="1.0.0.0-2.0.0.0" newVersion="2.0.0.0" />
      </dependentAssembly>
      <dependentAssembly>
        <assemblyIdentity name="System.Web.Mvc" publicKeyToken="31bf3856ad364e35" />
        <bindingRedirect oldVersion="1.0.0.0-4.0.0.0" newVersion="4.0.0.0" />
      </dependentAssembly>
      <dependentAssembly>
        <assemblyIdentity name="System.Web.WebPages" publicKeyToken="31bf3856ad364e35" />
        <bindingRedirect oldVersion="1.0.0.0-2.0.0.0" newVersion="2.0.0.0" />
      </dependentAssembly>
      <dependentAssembly>
        <assemblyIdentity name="WebGrease" publicKeyToken="31bf3856ad364e35" />
        <bindingRedirect oldVersion="0.0.0.0-1.3.0.0" newVersion="1.3.0.0" />
      </dependentAssembly>
    </assemblyBinding>
  </runtime>
</configuration>