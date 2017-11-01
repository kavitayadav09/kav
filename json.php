<?php
$json = '{
    "glossary": {
        "title": "example glossary",
		"GlossDiv": {
            "title": "S",
			"GlossList": {
                "GlossEntry": {
                    "ID": "SGML",
					"SortAs": "SGML",
					"GlossTerm": "Standard Generalized Markup Language",
					"Acronym": "SGML",
					"Abbrev": "ISO 8879:1986",
					"GlossDef": {
                        "para": "A meta-markup language, used to create markup languages such as DocBook.",
						"GlossSeeAlso": ["GML", "XML"]
                    },
					"GlossSee": "markup"
                }
            }
        }
    }
}';
echo $json."<br />";

$values = json_decode($json,true);

//print_r($values)."<br />";
$result = $values["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossDef"]["para"];

//print_r($values["glossary"]["GlossDiv"]["GlossList"]["GlossEntry"]["GlossDef"]["para"])."<br />";
print_r($result)."<br />";




?>



<html>
<head>
</head>
<body>
<form action="" method="POST">
json:<input type="txt" name="tagname" value="<?php print_r($result); ?>" >
</form>
</table>
</body>
</html>