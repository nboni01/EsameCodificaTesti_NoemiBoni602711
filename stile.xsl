<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns="http://www.w3.org/1999/xhtml" >
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">

        <html>

            <head>
                <title><xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title"/></title>
                <meta charset="utf-8"></meta>
                <meta name="description" content="Progetto di Codifica di Testi"></meta>
                <meta name="author" content="Noemi Boni"></meta>
                <link rel="stylesheet" type="text/css" href="stile.css" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="funzioni.js"></script>
            </head>

            <body>

                <!-- Titolo del progetto -->
                <header>
                    <h1>
                        <xsl:value-of select="tei:teiCorpus/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" />
                    </h1>  
                </header>
                
                <!-- Descrizione del progetto -->
                <section id="s1">
	                <h2>Cartoline dalla Grande Guerra</h2>
                    <div id="intro">
                        <p>
                            Il sito nasce come la presentazione della codifica digitale di due cartoline provenienti dal 
                            <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository" />, di 
                            <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement" />.<br />
                            Il progetto è realizzato e seguito dal corso di Codifica dei Testi dell'università di Informatica Umanistica, 
                            tenuto dal professore Angelo Mario del Grosso nell'anno 2021/2022.<br />
                            Le due cartoline hanno come protagonista la storia d'amore fra il, si suppone, tenente colonnello 
                            <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person/tei:persName[@ref='#GC']" /> e la sua amata,
                            <xsl:value-of select="//tei:fileDesc/tei:sourceDesc/tei:listPerson/tei:person/tei:persName[@xml:id='OT']" />.
                        </p>
                    </div>                   
                </section>

                <!-- CARTOLINA 177 -->

                <section id="s2">
                    <!-- Intestazione -->
                    <h2><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart177']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></h2>
                    <label class='container'>Fronte
                        <input type="radio" checked="checked" name="butt_uno" class="butt_uno" value="fronte" />
                        <span>|</span>
                    </label>
                    <label class='container'>Retro
                        <input type="radio" name="butt_uno" value="retro" class="butt_uno" />
                        <span>|</span>
                    </label>
                    <label class='container'>Info
                        <input type="radio" name="butt_uno" value="info" class="butt_uno" />
                        <span></span>
                    </label>

                    <!-- Contenitore delle principali informazioni -->
                    <div class="organizer">

                        <!-- Fronte della cartolina -->
                        <div id="front_177" class="show_cartoline">
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                                <xsl:attribute name="id">imgfront1</xsl:attribute>
                                <xsl:attribute name="class">show_img</xsl:attribute>
                                <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart177']/tei:facsimile/tei:surface[1]/tei:graphic/@url" /></xsl:attribute>
                            </xsl:element>

                            <div id="testo_1" class="show_text">
                                <xsl:call-template name="descrivi_contenuto1FRONTE" />
                            </div>

                            <!-- Informazioni sulla cartolina -->
                            <div class="show_text" id="info_177" style="display:none;">
                                <xsl:apply-templates select="tei:teiCorpus/tei:TEI[@xml:id='cart177']"/>
                            </div>
                        </div>

                        <!-- Retro della cartolina -->
                        <div id="back_177" class="show_cartoline" style="display:none;">
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                                <xsl:attribute name="id">imgback1</xsl:attribute>
                                <xsl:attribute name="class">show_img</xsl:attribute>
                                <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart177']/tei:facsimile/tei:surface[last()]/tei:graphic/@url" /></xsl:attribute>
                            </xsl:element>

                            <div id="testo_2" class="show_text">
                                <xsl:call-template name="descrivi_contenuto1RETRO" />
                            </div>
                        </div>
                    </div>
                    
                </section>


                <!-- CARTOLINA 219 -->

                <section id="s3">
                    <!-- Intestazione -->
                    <h2><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart219']/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:bibl/tei:title" /></h2>
                    <label class='container'>Fronte
                        <input type="radio" checked="checked" name="butt_due" class="butt_due" value="fronte" />
                        <span>|</span>
                    </label>
                    <label class='container'>Retro
                        <input type="radio" name="butt_due" value="retro" class="butt_due" />
                        <span>|</span>
                    </label>
                    <label class='container'>Info
                        <input type="radio" name="butt_due" value="info" class="butt_due" />
                        <span></span>
                    </label>

                    <!-- Contenitore delle principali informazioni -->
                    <div class="organizer">

                        <!-- Fronte della cartolina -->
                        <div id="front_219" class="show_cartoline">
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina fronte</xsl:attribute>
                                <xsl:attribute name="id">imgfront2</xsl:attribute>
                                <xsl:attribute name="class">show_img</xsl:attribute>
                                <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart219']/tei:facsimile/tei:surface[1]/tei:graphic/@url" /></xsl:attribute>
                            </xsl:element>

                            <div id="testo_3" class="show_text">
                                <xsl:call-template name="descrivi_contenuto2FRONTE" />
                            </div>

                            <!-- Informazioni sulla cartolina -->
                            <div class="show_text" id="info_219" style="display:none;">
                                <xsl:apply-templates select="tei:teiCorpus/tei:TEI[@xml:id='cart219']"/>
                            </div>
                        </div>

                        <!-- Retro della cartolina -->
                        <div id="back_219" style="display:none;" class="show_cartoline">
                            <xsl:element name="img">
                                <xsl:attribute name="alt">cartolina retro</xsl:attribute>
                                <xsl:attribute name="id">imgback1</xsl:attribute>
                                <xsl:attribute name="class">show_img</xsl:attribute>
                                <xsl:attribute name="src"><xsl:value-of select="tei:teiCorpus/tei:TEI[@xml:id='cart219']/tei:facsimile/tei:surface[last()]/tei:graphic/@url" /></xsl:attribute>
                            </xsl:element>

                            <div id="testo_4" class="show_text">
                                <xsl:call-template name="descrivi_contenuto2RETRO" />
                            </div>
                        </div>
                    </div>
                    
                </section>

                <!-- Crediti finali -->
                <section class="footer" id="s4">
                    <xsl:call-template name="footer" />
                    <b>Contatti: </b><i>n.boni1@studenti.unipi.it</i>
                    <p>Codificato per il corso di Codifica di testi<br/> tenuto dal Professore Angelo Mario Del Grosso</p>
                </section>

            </body>

         </html>

    </xsl:template>


    <!-- Template per le informazioni sulle cartoline -->
    <xsl:template match="tei:teiCorpus/tei:TEI[@xml:id='cart219' or @xml:id='cart177']">
        <xsl:variable name="sdesc" select="tei:teiHeader/tei:fileDesc/tei:sourceDesc" />
        <xsl:variable name="mittente" select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='sent']"/>
        <xsl:variable name="destinatario" select="tei:teiHeader/tei:profileDesc/tei:correspDesc/tei:correspAction[@type='received']"/>
        
        <div class="descrizione_fronte">
            <p>
                <b>Autore: </b><xsl:value-of select="$sdesc/tei:bibl/tei:author" /><br/>
                <b>Titolo: </b><xsl:value-of select="$sdesc/tei:bibl/tei:title" /><br/>
                <b>Tipo: </b><xsl:value-of select="$sdesc/tei:msDesc/tei:msContents/tei:summary" /><br/>
                <b>Stato: </b><xsl:value-of select="$sdesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition" /><br/>
                <b>Codice: </b><xsl:value-of select="$sdesc/tei:msDesc/tei:msIdentifier/tei:idno" /><br/>
            </p>
        </div>
        <div class="descrizione_retro">      
            <p>
                <b>Mittente: </b><xsl:value-of select="$mittente/tei:persName/tei:forename" /> &#160; <xsl:value-of select="$mittente/tei:persName/tei:surname" /> <br/>
                <b>Destinatario: </b><xsl:value-of select="$destinatario/tei:persName/tei:forename" /> &#160; <xsl:value-of select="$destinatario/tei:persName/tei:surname" /><br/>
                <b>Luogo di Spedizione: </b><xsl:value-of select="$mittente/tei:placeName" /><br/>
                <b>Data di presunta spedizione: </b><xsl:value-of select="$mittente/tei:date" /><br/>
                 <xsl:choose>
                    <xsl:when test="@xml:id='cart219'" >
                        <xsl:apply-templates select="$retro/tei:div[@type='stampe']" />
                    </xsl:when>
                    <xsl:otherwise>
                    <br />
                        Nessuna annotazione di altro genere sulla cartolina
                    </xsl:otherwise>
                </xsl:choose><br/>
                
                
            </p>
        </div>

    </xsl:template>

    <!-- Codifica testo cartolina 177 -->
    <xsl:variable name="fronte0" select="tei:teiCorpus/tei:TEI[@xml:id='cart177']/tei:text" />
    <xsl:variable name="retro0" select="$fronte0/tei:body/tei:div[@type='retro']" />
    <xsl:variable name="contf0" select="$fronte0/tei:body/tei:div[@type='fronte']/tei:div" />
    <xsl:variable name="contr0" select="$retro0/tei:div" />

    <xsl:template name="descrivi_contenuto1FRONTE">

        <div class="messaggio_fronte">
            <h3>Fronte</h3>
            <b>Descrizione:</b>
            <p>
                <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:figure/tei:head" />
                <br/>
                <xsl:value-of select="$fronte0/tei:body/tei:div[@type='fronte']/tei:figure/tei:figDesc" />
            </p>
            <p>
                <b>Testo:</b>
                <xsl:apply-templates select="$contf0/tei:p/tei:s" />
                <xsl:apply-templates select="$contf0/tei:closer" /> 
            </p>
        </div>

    </xsl:template>

    <xsl:template name="descrivi_contenuto1RETRO">
        <div class="messaggio_retro">
            <h3>Retro</h3>
            <i><xsl:value-of select="$contr0/tei:dateline" /></i>
            <br />
            <p class="pmessaggio">
                <xsl:apply-templates select="$contr0/tei:p[@xml:id='testo1_1']" />
                <xsl:apply-templates select="$contr0/tei:p[@xml:id='testo1_2']" />
                <xsl:apply-templates select="$contr0/tei:p[@xml:id='testo1_3']" />
                <xsl:apply-templates select="$contr0/tei:closer" /> 
            </p>
        </div>
    </xsl:template>

    <!-- Codifica Testo cartolina 219 --> 
    <xsl:variable name="fronte" select="tei:teiCorpus/tei:TEI[@xml:id='cart219']/tei:text" />
    <xsl:variable name="retro" select="$fronte/tei:body/tei:div[@type='retro']" />
    <xsl:variable name="contf" select="$fronte/tei:body/tei:div[@type='fronte']/tei:div" />
    <xsl:variable name="contr" select="$retro/tei:div" />

    <xsl:template name="descrivi_contenuto2FRONTE">
    
        <div class="messaggio_fronte">
            <h3>Fronte</h3>
            <b>Descrizione:</b>
            <p>
                <xsl:value-of select="$fronte/tei:body/tei:div[@type='fronte']/tei:figure/tei:head" />
                <br/>
                <xsl:value-of select="$fronte/tei:body/tei:div[@type='fronte']/tei:figure/tei:figDesc" />
            </p>
            <p>
                <b>Testo:</b>
                <xsl:apply-templates select="$contf/tei:p[@xml:id='testo2_f1']" />
                <xsl:apply-templates select="$contf/tei:p[@xml:id='testo2_f2']" />
                <i><xsl:apply-templates select="$contf/tei:closer" /></i>
            </p>
        </div>

    </xsl:template>

    <xsl:template name="descrivi_contenuto2RETRO">

        <div class="messaggio_retro">
            <h3>Retro</h3>
            <i><xsl:value-of select="$contr/tei:dateline" /></i>
            <br />
            <p class="pmessaggio">
                <xsl:apply-templates select="$contr/tei:p[@xml:id='testo2_1']" />
                <xsl:apply-templates select="$contr/tei:p[@xml:id='testo2_2']" />
                <xsl:apply-templates select="$contr/tei:p[@xml:id='testo2_3']" />
            </p>
        </div>

    </xsl:template>    

    <!-- Codifica footer -->
    <xsl:template name="footer">
        <xsl:variable name="index" select="tei:teiCorpus[@xml:id='index']/tei:teiHeader/tei:fileDesc"/>
        <h2>About - Progetto</h2>
        <div id="foo">
            <p >
                <b class="foot">Appartenente all'Ente </b> &#160;<xsl:value-of select="$index/tei:titleStmt/tei:respStmt/tei:name[@xml:id='SP']" /><br/>
                <b class="foot">Compilato da: </b> &#160;<xsl:value-of select="$index/tei:editionStmt/tei:respStmt/tei:persName[@xml:id='TC']" /><br/>
                <b class="foot">Organizzazione: </b> &#160; <xsl:value-of select="$index/tei:publicationStmt/tei:publisher" />, <xsl:value-of select="$index/tei:publicationStmt/tei:pubPlace" /><br/>
            </p>
            <p> 
                <b class="foot">Responsabile Scientifico: </b> &#160;<xsl:value-of select="$index/tei:editionStmt/tei:respStmt/tei:persName[@xml:id='GP']" />, <xsl:value-of select="$index/tei:editionStmt/tei:respStmt/tei:persName[@xml:id='ES']" /><br/>
                <b class="foot">Funzionario Responsabile:</b> &#160;<xsl:value-of select="$index/tei:editionStmt/tei:respStmt/tei:persName[@xml:id='ER']" /><br/>
            </p>
            <p >
                <b class="foot">Trascrizione e codifica html a cura di</b> &#160;<xsl:value-of select="$index/tei:titleStmt/tei:respStmt/tei:name[@xml:id='NB']" /><br/>
            </p>
        </div>
    </xsl:template>

    <!-- Template per l'identazione -->
    <xsl:template match="tei:lb">
        <br />
    </xsl:template>

    <!-- Template per le annotazioni -->
    <xsl:template match="tei:div[@type='stampe']">
        <b>Altre annotazioni sulla cartolina:</b>
        <p>
            <xsl:value-of select="$contr/tei:p[@xml:id='bstamp1_219t']" />
        </p>
        <p>
            <xsl:value-of select="$contr/tei:p[@xml:id='bstamp2_219t']" />
        </p>
    </xsl:template>

    <!-- Template per il testo incerto -->
    <xsl:template match="tei:unclear">
        <xsl:element name="i">
            <xsl:attribute name="class">unclear</xsl:attribute>
            <xsl:apply-templates />
        </xsl:element>
    </xsl:template>

    <!-- Template per i gap di testo -->
    <xsl:template match="tei:gap">
        <xsl:text>___</xsl:text>
    </xsl:template>


</xsl:stylesheet>