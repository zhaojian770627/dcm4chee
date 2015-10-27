<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:internal="urn:my-internal-data">

  <xsl:output method="html" indent="yes" encoding="UTF-8" />
  <xsl:variable name="page_title">
    New AE
  </xsl:variable>
  <xsl:include href="page.xsl" />

  <xsl:template match="model">
    <xsl:apply-templates select="AE" />
  </xsl:template>

  <xsl:template match="AE">
    <html>
      <body bgcolor="#FFFFFF" cellpadding="0" cellspacing="0"
        border="0">
        <center>
          <form name="ae_edit" action="aenewsubmit.m" method="post"
            accept-charset="UTF-8">
            <table border="0" cellspacing="0" cellpadding="0"
              width="35%">
              <tr>
                <td>
                  <center>
                    <table border="0">
                      <tr>
                        <td width="50">AE Title</td>
                        <td title="AE Title">
                          <input size="25" name="title" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Hostname</td>
                        <td title="Hostname">
                          <input size="25" name="hostName" type="text"
                            value="" />
                          <input name="checkHost" type="checkbox"
                            value="true">
                            <xsl:if test="/model/checkHost = 'true'">
                              <xsl:attribute name="checked" />
                            </xsl:if>
                          </input>
                          check
                          <input name="checkHost" type="hidden"
                            value="false" /> <!-- submit false for unselect state -->
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Port</td>
                        <td title="Port">
                          <input size="25" name="port" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td>Cipher Suites</td>

                        <td title="Cipher select">
                          <xsl:call-template name="cipherSelect">
                            <xsl:with-param name="cipherNumber">1</xsl:with-param>
                            <xsl:with-param name="cipher"
                              select="cipherSuites/item[1]" />
                          </xsl:call-template>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td title="Cipher select">
                          <xsl:call-template name="cipherSelect">
                            <xsl:with-param name="cipherNumber">2</xsl:with-param>
                            <xsl:with-param name="cipher"
                              select="cipherSuites/item[2]" />
                          </xsl:call-template>
                        </td>
                      </tr>
                      <tr>
                        <td></td>
                        <td title="Cipher select">
                          <xsl:call-template name="cipherSelect">
                            <xsl:with-param name="cipherNumber">3</xsl:with-param>
                            <xsl:with-param name="cipher"
                              select="cipherSuites/item[3]" />
                          </xsl:call-template>
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Issuer of Patient ID</td>
                        <td title="Issuer of Patient ID">
                          <input size="25" name="issuerOfPatientID"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Issuer of Accession Number ID</td>
                        <td
                          title="Issuer of Accession Number Local Namespace ID">
                          <input size="25" name="issuerOfAccessionNumberID"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Issuer of Accession Number UID</td>
                        <td
                          title="Issuer of Accession Number Universal Entity ID">
                          <input size="25" name="issuerOfAccessionNumberUID"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Issuer of Accession Number UID Type
                        </td>
                        <td
                          title="Issuer of Accession Number Universal Entity ID Type">
                          <input size="25"
                            name="issuerOfAccessionNumberUIDType" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">User ID</td>
                        <td title="User ID">
                          <input size="25" name="userID" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Password</td>
                        <td title="Password">
                          <input size="25" name="password" type="password"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">FS Group ID</td>
                        <td title="File System Group ID">
                          <input size="25" name="fileSystemGroupID"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">AE Group</td>
                        <td title="Group">
                          <input size="25" name="group"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Description</td>
                        <td title="Description">
                          <input size="25" name="description"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Station Name</td>
                        <td title="Station Name">
                          <input size="25" name="stationName"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Institution Name</td>
                        <td title="Institution Name">
                          <input size="25" name="institution"
                            type="text" value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Department Name</td>
                        <td title="Institutional Department Name">
                          <input size="25" name="department" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">WADO URL</td>
                        <td title="WadoUrl">
                          <input size="25" name="wadoUrl" type="text"
                            value="" />
                        </td>
                      </tr>
                      <tr>
                        <td width="50">Installed</td>
                        <td title="Installed">
                          <input name="installed" type="checkbox"
                            value="true">
                            <xsl:if test="/model/installed = 'true'">
                              <xsl:attribute name="checked" />
                            </xsl:if>
                          </input>
                          <input name="installed" type="hidden"
                            value="false" /> <!-- submit false for unselect state -->
                        </td>
                      </tr>
                      <tr>
                        <td colspan="2">
                          <center>
                            <input type="submit" name="nix" value="Echo"
                              onclick="return doEcho(this.form)" />
                            <input type="submit" name="new" value="Create" />
                            <input type="submit" name="cancel"
                              value="Cancel" />
                          </center>
                        </td>
                      </tr>
                    </table>
                  </center>
                </td>
              </tr>
            </table>
          </form>
        </center>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="cipherSelect">
    <xsl:param name="cipherNumber" />
    <xsl:param name="cipher" />

    <select name="cipher{$cipherNumber}">
      <option value="" selected="">-</option>
      <option value="SSL_RSA_WITH_NULL_SHA">
        <xsl:if test="$cipher='SSL_RSA_WITH_NULL_SHA'">
          <xsl:attribute name="selected" />
        </xsl:if>
        SSL_RSA_WITH_NULL_SHA
      </option>
      <option value="TLS_RSA_WITH_AES_128_CBC_SHA">
        <xsl:if test="$cipher='TLS_RSA_WITH_AES_128_CBC_SHA'">
          <xsl:attribute name="selected" />
        </xsl:if>
        TLS_RSA_WITH_AES_128_CBC_SHA
      </option>
      <option value="SSL_RSA_WITH_3DES_EDE_CBC_SHA">
        <xsl:if test="$cipher='SSL_RSA_WITH_3DES_EDE_CBC_SHA'">
          <xsl:attribute name="selected" />
        </xsl:if>
        SSL_RSA_WITH_3DES_EDE_CBC_SHA
      </option>
    </select>
  </xsl:template>

</xsl:stylesheet>


