var testremove = location.href.toLowerCase().indexOf("default.aspx");
if (testremove != -1) { location.replace(location.href.substring(0, testremove)) };
//skryje název souboru v adresním řádku