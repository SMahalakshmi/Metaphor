java -jar metaphor.jar -i input.bin -o OLE.xml
java -jar saxon8.jar -o normalize.xml OLE.xml templates.xsl
java -jar saxon9pe.jar  mathtype2ml.xsl >math2mml.xml
java -jar saxon8.jar -o dynamic.xsl math2mml.xml createXSL.xsl
java -jar saxon8.jar -o final_mml.xml normalize.xml dynamic.xsl