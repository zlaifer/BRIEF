xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../Schemas/GetSegmByDocument_PS.xsd" ::)
declare namespace ns2="http://xmlns.oracle.com/pcbpel/adapter/db/sp/GetSegmByDocument_BS";
(:: import schema at "../Schemas/GetSegmByDocument_BD.xsd" ::)

declare variable $Input as element() (:: schema-element(ns1:GetSegmByDocumentRequestPS) ::) external;

declare function local:GetSegmByDocumentPS_toGetSegmByDocumentBS_input($Input as element() (:: schema-element(ns1:GetSegmByDocumentRequestPS) ::)) as element() (:: schema-element(ns2:GetSegmByDocumentRequestBD) ::) {
    <ns2:GetSegmByDocumentRequestBD>
        <ns2:P_DOCUMENT>{fn:data($Input/ns1:NUMERO_DOCUMENTO)}</ns2:P_DOCUMENT>
    </ns2:GetSegmByDocumentRequestBD>
};

local:GetSegmByDocumentPS_toGetSegmByDocumentBS_input($Input)
