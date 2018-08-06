xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns2="http://www.example.org";
(:: import schema at "../Schemas/GetSegmByDocument_PS.xsd" ::)
declare namespace ns1="http://xmlns.oracle.com/pcbpel/adapter/db/sp/GetSegmByDocument_BS";
(:: import schema at "../Schemas/GetSegmByDocument_BD.xsd" ::)

declare variable $Output as element() (:: schema-element(ns1:GetSegmByDocumentResponsiveBD) ::) external;

declare function local:GetSegmByDocumentBS_to_GetSegmByDocumentPS_output($Output as element() (:: schema-element(ns1:GetSegmByDocumentResponsiveBD) ::)) as element() (:: schema-element(ns2:GetSegmByDocumentResponsivePS) ::) {
    <ns2:GetSegmByDocumentResponsivePS>
        <ns2:VOCODIGOSALIDA>{fn:data($Output/ns1:P_VOCODIGOSALIDA)}</ns2:VOCODIGOSALIDA>
        <ns2:VODESCRIPCIONSALIDA>{fn:data($Output/ns1:P_VODESCRIPCIONSALIDA)}</ns2:VODESCRIPCIONSALIDA>
        <ns2:COCURSOR>{fn:data($Output/ns1:P_COCURSOR)}</ns2:COCURSOR>
    </ns2:GetSegmByDocumentResponsivePS>
};

local:GetSegmByDocumentBS_to_GetSegmByDocumentPS_output($Output)
