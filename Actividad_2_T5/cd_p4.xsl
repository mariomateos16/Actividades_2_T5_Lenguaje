<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:variable name="tiempo">2:49</xsl:variable>
<xsl:template match="/">
    <html>
    <body>
    <h1>Discos de musica que duran menos de <xsl:value-of select="$tiempo"/></h1>
        <table border="1">
        <tr bgcolor="#707887">
            <th>Titulo Album</th>
            <th>Artista</th>
            <th>Sello Discografico</th>
            <th>Año de Publicación</th>
            <th>Canciones</th>
            <th>Tiempo</th>
        </tr>
        <xsl:for-each select="ListaCD/CD/cancion">
        <xsl:if test="(substring-before(./@tiempo, ':')*60 + substring-after(./@tiempo,':')) &lt; (substring-before($tiempo, ':')*60 + substring-after($tiempo,':'))">
        <tr> 
            <td><xsl:value-of select="../tituloAlbum"/></td>
            <td><xsl:value-of select="../artista"/></td>
            <td><xsl:value-of select="../selloDiscografico"/></td>
            <td><xsl:value-of select="../añoPublicacion"/></td>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="./@tiempo"/></td>
        </tr>
        </xsl:if>
        </xsl:for-each>
        </table>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>