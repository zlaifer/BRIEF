xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://www.example.org";
(:: import schema at "../Schemas/ErrorHandler.xsd" ::)

declare variable $ErrorCode as xs:string external;
declare variable $ReasonError as xs:string external;

declare function local:func($ErrorCode as xs:string, 
                            $ReasonError as xs:string) 
                            as element() (:: schema-element(ns1:errorHandler) ::) {
    <ns1:errorHandler>
        <ns1:errorCode>{fn:data($ErrorCode)}</ns1:errorCode>
        <ns1:reasonError>{fn:data($ReasonError)}</ns1:reasonError>
    </ns1:errorHandler>
};

local:func($ErrorCode, $ReasonError)
