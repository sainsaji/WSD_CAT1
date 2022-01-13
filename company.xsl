<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
            </head>
            <body>
                <h1 style="text-align:center">Employee Management System</h1>
                
                
                <table border="2" align="center">
                    <tr bgcolor="violet" >
                        
                        <th>ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Salary</th>
                        <th>E-mail</th>
                        <th>Mob.NO</th>
                        <th>Designation</th>
                        <th>Promotion</th>
                    </tr>
                    <xsl:for-each select="company/employee">
                            <tr>
                                <td>
                                    <xsl:value-of select="emp_id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_sal"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_email"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_mob"/>
                                </td>
                                <td>
                                    <xsl:value-of select="emp_designation"/>
                                </td>
                                <xsl:choose>
                                    <xsl:when test="emp_age &gt;=50">
                                        <td>
                                            Assosiate Project Manager
                                        </td>
                                    </xsl:when>
                                    <xsl:when test="emp_age &gt;=40 and emp_age &lt;=49 ">
                                        <td>
                                            Team Leader
                                        </td>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <td>
                                            Developer
                                        </td>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </tr>
                        </xsl:for-each>
                    </table>
                <br></br>
                    </body>
                    </html>
                    </xsl:template>

                    </xsl:stylesheet>