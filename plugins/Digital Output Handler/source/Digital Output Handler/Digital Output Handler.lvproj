﻿<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="23008000">
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="NI.SortType" Type="UInt">3</Property>
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Digital Output Handler.lvlib" Type="Library" URL="../Digital Output Handler.lvlib"/>
		<Item Name="Digital Output Handler.xml" Type="Document" URL="../Digital Output Handler.xml"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="PluginSDK.lvlibp" Type="LVLibp" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp">
					<Item Name="Addon Interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Addon Interface/Addon Interface.lvclass"/>
					<Item Name="Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Channel/Channel.lvclass"/>
					<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Clear Errors.vi"/>
					<Item Name="Consumer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Consumer Channel/Consumer Channel.lvclass"/>
					<Item Name="Create Channel.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Create Channel.vi"/>
					<Item Name="Create Channel_v2.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Create Channel_v2.vi"/>
					<Item Name="Derived Timing Producer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Derived Timing Producer Channel/Derived Timing Producer Channel.lvclass"/>
					<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Cluster From Error Code.vi"/>
					<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/1abvi3w/vi.lib/Utility/error.llb/Error Code Database.vi"/>
					<Item Name="Generic Processing Element Specification.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Generic Processing Element Specification/Generic Processing Element Specification.lvclass"/>
					<Item Name="IReceiveSystemMessages.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/IReceiveSystemMessages/IReceiveSystemMessages.lvclass"/>
					<Item Name="ISynchronizable.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/ISynchronizable/ISynchronizable.lvclass"/>
					<Item Name="Message Completion Handler.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Message Completion Handler/Message Completion Handler.lvclass"/>
					<Item Name="Parameters.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Parameters/Parameters.lvclass"/>
					<Item Name="PEFClasses.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses.vi"/>
					<Item Name="Plugin.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Plugin/Plugin.lvclass"/>
					<Item Name="Processing Element Specification.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Processing Element Specification/Processing Element Specification.lvclass"/>
					<Item Name="Processing Element.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Processing Element/Processing Element.lvclass"/>
					<Item Name="Producer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Producer Channel/Producer Channel.lvclass"/>
					<Item Name="sdk_Error_Handler.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/sdk_Error_Handler.vi"/>
					<Item Name="Setpoint Consumer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Setpoint Consumer Channel/Setpoint Consumer Channel.lvclass"/>
					<Item Name="Space Constant.vi" Type="VI" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/1abvi3w/vi.lib/dlg_ctls.llb/Space Constant.vi"/>
					<Item Name="System Interface.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/System Interface/System Interface.lvclass"/>
					<Item Name="Waveform Consumer Channel.lvclass" Type="LVClass" URL="/&lt;vilib&gt;/FlexLogger/SDK/PluginSDK.lvlibp/PEFClasses/SDK/Waveform Consumer Channel/Waveform Consumer Channel.lvclass"/>
				</Item>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="Digital Output Handler Packed Library" Type="Packed Library">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{0146F934-95F5-46BC-A3EC-0388D29854E7}</Property>
				<Property Name="Bld_buildSpecDescription" Type="Str">Build Specification for a FlexLogger IO Plug-in*

* You must close and reopen your FlexLogger project in order to import a new build of your IO Plug-in.</Property>
				<Property Name="Bld_buildSpecName" Type="Str">Digital Output Handler Packed Library</Property>
				<Property Name="Bld_excludeDependentPPLs" Type="Bool">true</Property>
				<Property Name="Bld_excludeLibraryItems" Type="Bool">true</Property>
				<Property Name="Bld_excludePolymorphicVIs" Type="Bool">true</Property>
				<Property Name="Bld_localDestDir" Type="Path">/C/Users/Public/Documents/National Instruments/FlexLogger/Plugins/IOPlugins/NI_AB_PROJECTNAME</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{F3440103-5340-46C4-BC37-C20BDA8EB4EC}</Property>
				<Property Name="Bld_version.build" Type="Int">19</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Digital Output Handler.lvlibp</Property>
				<Property Name="Destination[0].path" Type="Path">/C/Users/Public/Documents/National Instruments/FlexLogger/Plugins/IOPlugins/NI_AB_PROJECTNAME/Digital Output Handler.lvlibp</Property>
				<Property Name="Destination[0].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[0].preserveHierarchy" Type="Bool">true</Property>
				<Property Name="Destination[0].type" Type="Str">App</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">/C/Users/Public/Documents/National Instruments/FlexLogger/Plugins/IOPlugins/NI_AB_PROJECTNAME</Property>
				<Property Name="Destination[1].path.type" Type="Str">&lt;none&gt;</Property>
				<Property Name="Destination[2].destName" Type="Str">User Folder</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/Digital Output Handler Packed Library/User/Digital Output Handler</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="PackedLib_callersAdapt" Type="Bool">true</Property>
				<Property Name="Source[0].itemID" Type="Str">{E9500D41-04CD-4B4A-B0BD-5D389ED92DB3}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Digital Output Handler.lvlib</Property>
				<Property Name="Source[1].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[1].Library.atomicCopy" Type="Bool">true</Property>
				<Property Name="Source[1].Library.LVLIBPtopLevel" Type="Bool">true</Property>
				<Property Name="Source[1].preventRename" Type="Bool">true</Property>
				<Property Name="Source[1].properties[0].type" Type="Str">Remove block diagram</Property>
				<Property Name="Source[1].properties[0].value" Type="Bool">true</Property>
				<Property Name="Source[1].properties[1].type" Type="Str">Remove front panel</Property>
				<Property Name="Source[1].properties[1].value" Type="Bool">true</Property>
				<Property Name="Source[1].propertiesCount" Type="Int">2</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">TopLevel</Property>
				<Property Name="Source[1].type" Type="Str">Library</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Digital Output Handler.xml</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
				<Property Name="TgtF_companyName" Type="Str">National Instruments Costa Rica Ltda.</Property>
				<Property Name="TgtF_fileDescription" Type="Str">Digital Output Handler Packed Library</Property>
				<Property Name="TgtF_internalName" Type="Str">Digital Output Handler Packed Library</Property>
				<Property Name="TgtF_legalCopyright" Type="Str">Copyright © 2024 National Instruments Costa Rica Ltda.</Property>
				<Property Name="TgtF_productName" Type="Str">Digital Output Handler Packed Library</Property>
				<Property Name="TgtF_targetfileGUID" Type="Str">{BA436F44-1660-4EC7-AD9F-DC3F84C6BCCF}</Property>
				<Property Name="TgtF_targetfileName" Type="Str">Digital Output Handler.lvlibp</Property>
				<Property Name="TgtF_versionIndependent" Type="Bool">true</Property>
			</Item>
		</Item>
	</Item>
</Project>
