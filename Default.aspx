<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Navrhujeme, vyrábíme, montujeme kuchyně na klíč. Rádi Vás provedeme výběrem Vaší kuchyně do bytu, domu či firmy. Zpracujeme 3D návrh zcela nezávazně, zdarma a předložíme cenovou kalkulaci. Návrh může probíhat u nás na studiu nebo u Vás doma. Rádi nabídneme i možnost financování Vaší kuchyně" />
    <meta name="author" content="J. Žižka" />

    <title>Moje nová kuchyně | Kuchyně Gorenje</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />

    <!--Favicon -->
    <link rel="icon" type="image/png" href="img/favicon.png" />

    <!-- carousel scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="vendor/jquery/jquery.min.js"></script>

    <%-- <link href="vendor/fontawesome-free/css/fontawesome.min.css" rel="stylesheet"  type="text/css" />--%>
    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css" />
    <!--  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />

    <!-- Custom styles for this template -->
    <link href="css/agency.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server" novalidate="novalidate">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MYSQL2 %>" SelectCommand="SELECT * FROM [Users_table]"></asp:SqlDataSource>




        <%--<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MySQL %>" SelectCommand="SELECT * FROM [Users_table]"></asp:SqlDataSource>--%>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light fixed-top " id="mainNav">
            <div class="container-fluid">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">
                    <img src="img/logo_mnk.png" class="nav-img " /></a><!-- zde bude logo -->
                <button class="navbar-toggler navbar-toggler-right font-weight-bold" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
        <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#services">O nás</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#portfolio">Realizace</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#recenze">Recenze</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#team">Náš tým</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#contact">Kontakt</a>
                        </li>
                        <li class="nav-item" runat="server" id="prihlas_nav" visible="true" >
                            <a class="nav-link js-scroll-trigger"  href="#reg_log">Přihlásit se</a>
                        </li>
                        <li class="nav-item" runat="server" id="bonus_nav" visible="false" >
                            <a class="nav-link js-scroll-trigger" href="#bonus">Bonus</a>
                        </li>
                        <asp:Button ID="log_out_btn_nav" Visible="false" runat="server" CssClass="  btn btn-primary text-uppercase" Text="Odhlásit se" OnClick="log_outbtn_Click" />
                       <%-- <li class="nav-item" runat="server" id="odhlas_nav" visible="false" >
                            <a class="nav-link js-scroll-trigger"  href="#logout">Odhlásit se</a>
                        </li>--%>

                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header id="page-top" class="masthead row ">
            <div class="container-fluid ">
                <div class="intro-text ">
                    <div class="intro-heading mt-5">
                        <h1 class="intro-heading mt-5">Poradíme, navrhneme, sestavíme.</h1>
                    </div>
                    <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Chci vědět víc!</a>
                </div>
            </div>
        </header>

        <!-- Services – o nás-->
        <section class="bg-light page-section" id="services">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Co umíme</h2>
                        <h3 class="section-subheading text-muted">Proč spolupracovat s námi?</h3>
                    </div>
                </div>
                <div class="row text-center">
                    <div class="col-lg-3 col-sm-6">
                        <span class="fa-stack fa-4x">
                            <img src="img/services/spolupracovat-osvedcene-znacky-v2.png" alt="Osvědčené značky" />
                        </span>
                        <h4 class="service-heading">Staré osvědčené profi značky</h4>
                        <p class="text-muted">Siemens, AEG, Eelektrolux, gorenje, MORA je jistota prověřovaná a vyzkoušená generacemi uživatelů a spokojených zákazníků.</p>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <span class="fa-stack fa-4x">
                            <img src="img/services/spolupracovat-partak-vorezavatka.png" alt="jistota" />

                        </span>
                        <h4 class="service-heading">Nejsme žádný vořezávátka</h4>
                        <p class="text-muted">Kuchyněmi se zabýváme 24 hod. denně, 10 let v kuse. Umíme velké i malé projekty. Jsme profíci. S námi si renomé pozvednete a práci ušetříte.</p>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <span class="fa-stack fa-4x">
                            <img src="img/services/spolupracovat-nebudete-mit-praci.png" alt="Bez práce" />

                        </span>
                        <h4 class="service-heading">Nebudete s tím mít žádnou práci</h4>
                        <p class="text-muted">Bez práce navíc, získá Váš projekt zajímavější rozměr a hodnotu, pro vás i vaše zákazníky.</p>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <span class="fa-stack fa-4x">
                            <img src="img/services/spolupracovat-pusobeni.svg" class="ml-n4" alt="Působíme po celé ČR" />

                        </span>
                        <h4 class="service-heading">Fungujeme od Aše až po Beskydy</h4>
                        <p class="text-muted">Od samot po velkoměsta, prostě B2B projekty zvládáme celorepublikově. Občas expandujeme i za hranice, a to nejen všedních dnů.</p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Portfolio – Realizace-->
        <section class=" page-section " id="portfolio">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Realizace</h2>
                        <h3 class="section-subheading text-muted">Nechte se okouzlit vzhledem kuchyní v reálu</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
                            <img class="img-fluid" src="img/portfolio/01-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Kuchyně s rohovým dřezem a stupínkem</h4>
                            <p class="text-muted">Pelhřimov</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal2">
                            <img class="img-fluid" src="img/portfolio/02-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Útulná rustikální magnóliová kuchyňka</h4>
                            <p class="text-muted">Chotěboř</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal3">
                            <img class="img-fluid" src="img/portfolio/03-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Na malém prostoru a přesto velká </h4>
                            <p class="text-muted">Velké Meziříčí</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal4">
                            <img class="img-fluid" src="img/portfolio/04-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Velká luxusní kuchyně v G dispozici</h4>
                            <p class="text-muted">Havlíčkův Brod</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal5">
                            <img class="img-fluid" src="img/portfolio/05-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Klasický rustik pro 4člennou rodinu</h4>
                            <p class="text-muted">Žďár nad Sázavou</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 portfolio-item">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal6">
                            <img class="img-fluid" src="img/portfolio/06-thumbnail.jpg" alt="kuchyně" />
                        </a>
                        <div class="portfolio-caption">
                            <h4>Návrat něžné vanilky</h4>
                            <p class="text-muted">Jihlava</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- About, recenze-->
        <section class=" page-section bg-light" id="recenze">
            <div class="container-fluid   ">
                <div class="row">
                    <div class="col-lg-12 text-center ">
                        <h2 class="section-heading text-uppercase">Recenze</h2>
                        <h3 class="section-subheading text-muted">Nechť Vás zkušenosti ověřených zákazníků přesvědčí</h3>
                    </div>
                </div>
                <div class="row ">
                    <div class="col-11 mx-auto">
                        <div class="row">

                            <div class="col-xl-3 col-md-6">
                                <blockquote class="blockquote">
                                    <p>
                                        Díky webovým stránkám jsem se rozhodla realizovat novou kuchyň ve studiu Moje nová kuchyně gorenje Jihlava. Pro, mluvila i tradice a kvalita značky gorenje.
                                Spolupráce s designérkou byla příjemná a profesionální. Domluvené termíny vždy platily a byly dodrženy. Celý proces navrhování, výroby a následné montáže byl popsán na začátku, a byl také dodržen.
                                Tak jak vypadala kuchyně na pěkném, realistickém 3D návrhu, stejně tak byla následně ve skutečnosti zrealizována. Studio Moje nová kuchyně bych s čistým svědomím doporučila svým známým i přátelům.
                                    </p>
                                    <footer class="blockquote-footer">
                                        Petra, zákaznice 

                                    </footer>
                                </blockquote>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <blockquote class="blockquote">
                                    <p>
                                        Super přístup, fajn návrháři a i když z výroby přišla jedna věcička špatně, vše se pohotově a rychle vyřešilo. Díky za krásnou kuchyni a profesionální jednání od začátku až dokonce, budeme doporučovat :-)
                            <br />
                                        …
                                <br />
                                        Jo a nabídnou vám kávu, kterou ale nehodnotím, protože jsem neměl.

                                    </p>
                                    <footer class="blockquote-footer">
                                        Lusy, zákaznice
                                    </footer>
                                </blockquote>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <blockquote class="blockquote">
                                    <p>
                                        S Gorenje v Jihlavě máme jen pozitivní zkušenosti. Profesionální přístup a vše vyřízeno k naší spokojenosti.
                                    </p>
                                    <footer class="blockquote-footer">
                                        Slávek, zákazník
                                    </footer>
                                </blockquote>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <blockquote class="blockquote">
                                    <p>
                                        Naši mají kuchyň od Gorenje, kvalita je super, provedení precizní, nějaké sleva na spotřebiče, když vzali komplet všechno. Jsou spokojení, kuchyni opravdu nejde co vytknout, akorát teda ta cena.                           
                                    </p>
                                    <footer class="blockquote-footer">
                                        Aleš, zákazník
                                    </footer>
                                </blockquote>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <!-- Team  -->
        <section class=" page-section" id="team">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Náš tým</h2>
                        <h3 class="section-subheading text-muted">Kdo za tím vším stojí?</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/prodejna-jihlava-jan-mach.jpg" alt="Jan Mach" />
                            <h4>Jan Mach</h4>
                            <p class="text-muted">Manažer kuchyňských studií</p>
                            <%-- <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </li>
                        </ul>--%>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/prodejna-jihlava-monika-polanska.jpg" alt="Monika Polanská" />
                            <h4>Monika Polanská</h4>
                            <p class="text-muted">Designérka kuchyní</p>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/prodejna-jihlava-lucie-dvorakova_2.jpg" alt="Lucie Dvořáková" />
                            <h4>Lucie Dvořáková</h4>
                            <p class="text-muted">Designérka kuchyní</p>

                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-member">
                            <img class="mx-auto rounded-circle" src="img/team/me_closeup.jpg" alt="Josef Žižka" />
                            <h4>Josef Žižka</h4>
                            <p class="text-muted">Fotograf kuchyní</p>

                        </div>
                    </div>
                </div>
                <%--<div class="row">
                <div class="col-lg-8 mx-auto text-center">
                    <p class="large text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.</p>
                </div>
            </div>--%>
            </div>
        </section>

        <!-- Clients -->
        <section id="loga" class="py-5">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-4 ">
                        <a href="https://www.gorenje.cz" target="_blank">
                            <img class="img-fluid d-block mx-auto" src="img/logos/Gorenje_Logo.svg.png" alt="Gorenke" />

                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a href="https://www.mora.cz" target="_blank">
                            <img src="img/logos/Logo-Mora600.png" class="img-fluid d-block mx-auto" alt="Mora Spotřebiče" />
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <a href="https://www.franke.com/cz/cs.html" target="_blank">
                            <img src="img/logos/franke.png" class="img-fluid d-block mx-auto" alt="Franke" />

                        </a>
                    </div>

                </div>
            </div>
        </section>


        <%-- <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading text-uppercase">About</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="rounded-circle img-fluid" src="img/about/1.jpg" alt="" />
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2009-2011</h4>
                                    <h4 class="subheading">Our Humble Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="rounded-circle img-fluid" src="img/about/2.jpg" alt="" />
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>March 2011</h4>
                                    <h4 class="subheading">An Agency is Born</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="rounded-circle img-fluid" src="img/about/3.jpg" alt="" />
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>December 2012</h4>
                                    <h4 class="subheading">Transition to Full Service</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="rounded-circle img-fluid" src="img/about/4.jpg" alt="" />
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>July 2014</h4>
                                    <h4 class="subheading">Phase Two Expansion</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                  <br />
                                    Of Our
                  <br />
                                    Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>--%>






        <!-- Contact  -->

        <section class="section page-section" id="contact">

            <asp:Panel ID="Panel_mail" DefaultButton="Btn_mail" runat="server">


                <div class="container-fluid ">
                    <div class="row">
                    </div>
                    <div class="row  mx-auto pb-3" id="mailto" runat="server">

                        <div class=" col-xl-8 col-md-10  col-sm-8 mx-auto">

                            <h2 class="font-weight-500  section-heading  pb-2 text-center">Napište nám!</h2>
                            <h3 class="section-subheading text-muted"></h3>

                            <div class="row">

                                <div class=" form-group col-md-6 col-sm-12 ">
                                    <asp:TextBox runat="server" class="form-control" ID="mail_sendertxt" type="text" placeholder="Váš email" required="required" data-validation-required-message="Please enter your name."></asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class=" form-group col-md-6 col-sm-12">
                                    <asp:TextBox runat="server" class="form-control" ID="mail_headtxt" type="text" placeholder="Předmět" required="required" data-validation-required-message="Please enter your name."></asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>

                                <div class="form-group col-md-12">
                                    <asp:TextBox runat="server" class="form-control" ID="mail_bodytxt" type="text" placeholder="Vaše zpráva" TextMode="Multiline"> </asp:TextBox>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>


                            <asp:Button ID="Btn_mail" runat="server" CssClass="btn btn-primary btn-xl text-uppercase" Text="Odeslat" OnClick="Btn_mail_Click" novalidate="novalidate" />
                            <asp:Label ID="Labelmail" class="float-right" ForeColor="White" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                </div>
            </asp:Panel>
        </section>



        <section id="reg_log" class="section page-section" runat="server">

            <div class="container-fluid">
                <!-- prihlaseni, registrace -->
                <div class="row  ">
                    <div class="col-12 text-center ">
                        <h2 class="section-heading text-uppercase">Přihlášení</h2>
                        <h3 class="section-subheading text-muted">Nenechte si ujít bonusové informace</h3>

                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="row align-content-center">
                            <div class="col-xl-8 col-lg-10 col-md-10 col-sm-8 mx-auto">
                                <div class="row">

                                    <div class="col-md-6">
                                        <div class="col-md-10  pb-3">
                                            <asp:Panel ID="Panel_log" runat="server" DefaultButton="Btn_login">
                                                <h2 class="font-weight-normal section-heading pb-2 pl-2">Přihlašte se</h2>
                                                <div class=" form-group">
                                                    <asp:TextBox runat="server" class="form-control" ID="log_usernameTxt" type="text" placeholder="Uživatelské jméno/email" required="required" data-validation-required-message="Please enter your name."></asp:TextBox>
                                                    <p class="help-block text-danger"></p>
                                                </div>

                                                <div class="form-group">
                                                    <asp:TextBox runat="server" class="form-control" ID="log_passTxt" type="password" placeholder="Heslo" TextMode="Password"> </asp:TextBox>
                                                    <p class="help-block text-danger"></p>
                                                </div>


                                                <asp:Button ID="Btn_login" runat="server" CssClass="btn btn-primary btn-xl text-uppercase" CausesValidation="false" Text="Přihlásit se" OnClick="Btn_login_Click" />
                                                <br />
                                                <asp:Label ID="Labell" runat="server" Text="" ForeColor="Red"></asp:Label>
                                            </asp:Panel>
                                        </div>
                                    </div>


                                    <div class="col-md-6  ">
                                        <div class="col-md-10 float-right">
                                            <asp:Panel ID="Panel_reg" runat="server" DefaultButton="Btn_reg">


                                                <h2 class="font-weight-normal section-heading pb-2 pl-2">Zaregistruj se</h2>
                                                <div class=" form-group">
                                                    <asp:TextBox runat="server" class="form-control" ID="reg_usernameTxt" type="text" placeholder="Uživatelské jméno" />
                                                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidatorl1" runat="server" ControlToValidate="reg_usernameTxt" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                                                </div>

                                                <div class="form-group">
                                                    <%--<asp:RegularExpressionValidator ID="RegularExpressionValidatorl1" runat="server" ErrorMessage="Takový email nelze použít" ForeColor="Red" ControlToValidate="reg_emailTxt" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>--%>
                                                    <asp:TextBox runat="server" class="form-control" ID="reg_emailTxt" type="email" placeholder="Email"></asp:TextBox>
                                                </div>

                                                <div class="form-group">
                                                    <asp:TextBox runat="server" class="form-control" ID="reg_passTxt" type="password" placeholder="Heslo" TextMode="Password"> </asp:TextBox>

                                                </div>

                                                <asp:Button ID="Btn_reg" runat="server" CssClass="btn btn-primary btn-xl text-uppercase " Text="Registrovat se" OnClick="Btn_reg_Click" />
                                                <br />
                                                <asp:Label ID="Labelr" runat="server" ForeColor="Red" Text=""></asp:Label>
                                            </asp:Panel>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>


  




        <!-- Bonus -->
        <section class="page-section" runat="server" visible="false" id="bonus">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading text-uppercase">Videa Realizací</h2>
                        <h3 class="section-subheading text-muted">Takto vypadají kuchyně na videu!</h3>
                    </div>
                </div>
                <div class=" video-container ">
                    <iframe class="" src="https://www.youtube.com/embed/videoseries?list=PLj2LLExJkfAHHEDDtEuqPqB_xyYVM6GfC" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    <style>
                        .video-container {
                            position: relative;
                            padding-bottom: 56.25%; /* 16:9 */
                            height: 0;
                        }

                            .video-container iframe {
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                            }
                    </style>

                </div>



            </div>
        </section>


        <!-- Sekce pro odhlášení, zobrzí se pouze pokud je uživatel přihlášen -->
        <section class="page-section" runat="server" visible="false" id="logout">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">

                        <asp:Label ID="label_logged" runat="server" Text="Právě jste přihlášen jako "></asp:Label>
                        <br />
                        <asp:Button ID="log_outbtn" runat="server" CssClass=" mt-2 btn btn-primary btn-xl text-uppercase" Text="Odhlásit se" OnClick="log_outbtn_Click" />

                    </div>



                </div>
            </div>
        </section>





        <!-- Footer -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <ul class="list-inline social-buttons">
                            <li class="list-inline-item">
                                <a target="_blank" href="https://www.facebook.com/MojeNovaKuchyne/">
                                    <span class="fab fa-facebook-f"></span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a target="_blank" href="https://www.youtube.com/channel/UCdsqeWx-qU7ijnde6r8dpIg">
                                    <span class="fab fa-youtube"></span>
                                </a>
                            </li>
                            <li class="list-inline-item">
                                <a target="_blank" href="https://www.instagram.com/mojenovakuchyne/">
                                    <span class="fab fa-instagram"></span>
                                </a>
                            </li>

                            <li class="list-inline-item">
                                <a target="_blank" href="https://cz.pinterest.com/mojenovakuchyne/">
                                    <span class="fab fa-pinterest "></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-6">
                        <span class="copyright">Vytvořil J. Žižka &copy;2020 – Jedním okem k dokonalosti</span>
                    </div>


                </div>
            </div>
        </footer>

        <!-- Portfolio Modals -->

        <!-- Modal 1 -->
        <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid modal-body">
                        <div class="row">
                            <div class="  col-md-12 mx-auto ">
                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->
                                        Susann


                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->
                                        Kuchyně s rohovým dřezem a stupínkem

                                    </p>

                                    <div id="car1" class="carousel slide " data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car1" data-slide-to="0" class="active"></li>
                                            <li data-target="#car1" data-slide-to="1"></li>
                                            <li data-target="#car1" data-slide-to="2"></li>
                                            <li data-target="#car1" data-slide-to="3"></li>
                                            <li data-target="#car1" data-slide-to="4"></li>
                                            <li data-target="#car1" data-slide-to="5"></li>




                                        </ul>

                                        <!-- The slideshow -->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active ">

                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-1-1.jpg" alt="moje nová kuchyně" />
                                            </div>
                                            <div class="carousel-item">
                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-2-1.jpg" alt="moje nová kuchyně" />
                                            </div>
                                            <div class="carousel-item">
                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-3-1.jpg" alt="moje nová kuchyně" />
                                            </div>
                                            <div class="carousel-item">
                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-4-1.jpg" alt="moje nová kuchyně" />
                                            </div>
                                            <div class="carousel-item">
                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-7-1.jpg" alt="moje nová kuchyně" />
                                            </div>
                                            <div class="carousel-item">
                                                <img src="img/carous/carousel1/Vacek_Jihlava-tisk-6-1.jpg" alt="moje nová kuchyně" />
                                            </div>

                                        </div>

                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car1" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car1" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row ">

                                            <div class="col-md-12 ">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Velkoryse pojatá kuchyně do praktického tvaru U. V tomto typu dispozice má uživatel, z každého místa, vše na dosah. 
                                                   <br />
                                                    Kombinace světlého silk dekoru dvířek a tmavší imitace dřeva na pracovní a zádové ploše, dodávají kuchyni masivní, útulný vzhled, hodící se především do prostorných realizací.
                                                    <br />
                                                    Umístění dřezu do rohu zvětšuje pracovní plochu desky. Nápadité vytažení prostoru za ním, do stupínku, oživuje jednolitost stejnobarevné plochy.
                                                       <br />
                                                    Otevírání horních skříněk zajišťuje dvojvýklopný systém Blumotion, současně otevírající celý vysoký vnitřní prostor.
                                                           <br />
                                                    Poloostrůvek zakončující pracovní plochu je současně varným centrem s indukční deskou a komínovým odsavačem par. Konec pracovní desky slouží, díky svému přesahu, k barovému posezení.
                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->
                                                    Praktické výklopné nebo výsuvné zásuvkové porty nesmí chybět na žádném ostrůvku ani polostrůvku. Bez jejich přítomnosti nelze připojit žádný externí kuchyňský pomocník.

                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>141 486 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>51 640 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>10 701 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>15 398 Kč
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>219 225 Kč
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 2 -->
        <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="  col-md-12 mx-auto ">
                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->

                                        Lucia   

                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->

                                        Útulná rustikální magnóliová kuchyňka

                                    </p>

                                    <div id="car2" class="carousel slide " data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car2" data-slide-to="0" class="active"></li>
                                            <li data-target="#car2" data-slide-to="1"></li>
                                            <li data-target="#car2" data-slide-to="2"></li>
                                            <li data-target="#car2" data-slide-to="3"></li>
                                            <li data-target="#car2" data-slide-to="4"></li>
                                        </ul>

                                        <!-- The slideshow, změnit obrázky-->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img alt="kuchyně" src="img/carous/carousel2/Michalicek-Chotebor_3862T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel2/Michalicek-Chotebor_3859T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel2/Michalicek-Chotebor_3869T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel2/Michalicek-Chotebor_3885T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel2/Michalicek-Chotebor_3893T.jpg" />
                                            </div>


                                        </div>

                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car2" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car2" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row">

                                            <div class="col-md-12  ">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Menší rustikální kuchyňka modelu Lucia magnóliové barvy, doplněná tmavší laminátovou deskou s výraznou strukturou. Dvířka jsou osazeny hranatým úchytem s kovaným vzhledem.
                                                <br />
                                                    Dispozice do ,,L“ začíná vestavnou lednicí gorenje s navazujícími velkými výsuvnými boxy, následně troubou umístěnou pod varnou deskou. Praktický výsuv na plechy je skryt pod pečící troubou gorenje.
                                                <br />
                                                    Po pravé straně trouby je umístěn chytrý pomocník – užší drátěný výsuv na oleje a koření. Rohová skříň je prosklená policová, která se stáčí na stranu druhou, kde navazuje nerezový dřez s velkým odkapem.



                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->

                                                    Jednou z praktických zajímavostí kuchyně je horní skříň, v níž je zabudovaná mikrovlnná trouba gorenje. Z estetického soudku vyniká věncová římsa na horní hraně skříněk kuchyně, která prochází i nad odsavačem par gorenje.

                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>106 836 KČ													
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>36 951 KČ
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>2 970 KČ
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>12 498 KČ   
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>159 255 KČ
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 3 -->
        <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid">

                        <div class="row">
                            <div class="  col-md-12 mx-auto ">
                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->
                                        Celine


                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->
                                        Na malém prostoru a přesto velká


                                    </p>

                                    <div id="car3" class="carousel slide " data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car3" data-slide-to="0" class="active"></li>
                                            <li data-target="#car3" data-slide-to="1"></li>
                                            <li data-target="#car3" data-slide-to="2"></li>
                                            <li data-target="#car3" data-slide-to="3"></li>
                                            <li data-target="#car3" data-slide-to="4"></li>
                                            <li data-target="#car3" data-slide-to="5"></li>
                                            <li data-target="#car3" data-slide-to="6"></li>




                                        </ul>

                                        <!-- The slideshow, změnit obrázky-->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste2642T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste2641T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste2640T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste2644T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste_3833T.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel3/Michal-Mostiste2647T.jpg" />
                                            </div>

                                        </div>


                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car3" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car3" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row">

                                            <div class="col-md-12  ">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Dispoziční kombinace moderní rovné linky s ostrůvkem, a samostatné sekce vysokých skříní s vestavnou multifunkční a mikrovlnnou troubou gorenje.
                                                <br />
                                                    Barevnost lesklé pískové modelu Susann a tmavé v měděné bronzu modelu Celine vytváří elegantní sestavu, vsazenou v menším prostoru, ale chytře promyšlenou. Stává se z ní tak, úložnými prostory i pracovní plochou, poměrně rozlehlá kuchyně.
                                                <br />
                                                    Pracovní deska ostrůvku vybíhá vzhůru ke stropu v podobě obkladu zdi osazeném policemi. Vrchní skříňky pokračují slepým výkrytem vyvedeným v barevnosti vysokých skříní. 



                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->

                                                    Dispozice do tvaru G, umožňuje i u rozsáhlé kuchyně dosáhnout toho, že vše máte po ruce. Velký prostor je vždy praktičtější a zajímavější řešit s ostrůvkem. Omezíte tím našlapané kroky mezi varným a mycím centrem na minimum.

                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>186 531 KČ
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>58 766 KČ
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>9 938 KČ
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>14 408 Kč
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>267 643 Kč
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 4 -->
        <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="  col-md-12 mx-auto ">
                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->

                                        Laila

                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->
                                        Velká luxusní kuchyně v G dispozici


                                    </p>

                                    <div id="car4" class="carousel slide" data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car4" data-slide-to="0" class="active"></li>
                                            <li data-target="#car4" data-slide-to="1"></li>
                                            <li data-target="#car4" data-slide-to="2"></li>
                                            <li data-target="#car4" data-slide-to="3"></li>
                                            <li data-target="#car4" data-slide-to="4"></li>
                                            <li data-target="#car4" data-slide-to="5"></li>
                                            <li data-target="#car4" data-slide-to="6"></li>





                                        </ul>

                                        <!-- The slideshow, změnit obrázky-->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-7.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-1.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-2.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-3.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-4.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-5.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel4/Machova_Jihlava-tisk-6.jpg" />
                                            </div>

                                        </div>


                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car4" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car4" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row">

                                            <div class="col-md-12">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Velkoryse řešená prostorná kuchyně, koncipovaná do tvaru G. Stranu protilehlou oknu zaujímají vysoké skříně, doplněné o vestavnou pečící a mikrovlnnou troubu, společně s volně stojící, původní chladničkou.
                                            <br />
                                                    Po levé straně od vysokých skříní začíná velká pracovní plocha společně s mycím centrem zahrnujícím dřez s baterií a myčku nádobí gorenje. Zde jsou umístěny i jediné horní skříňky s LED osvětlením pracovní plochy. Před částí pracovní desky vytažené směrem k oknu, ve funkci parapetu, vystupuje, na přání zákazníka, masivní dubové prkénko. 
                                            <br />
                                                    Poslední část kuchyně tvoří poloostrůvek s varným centrem, jemuž dominuje ostrůvkový odsavač par. Ve vnější část ostrůvku vyplňují zúžené skříně a podstavná obestavěná vinotéka.




                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->
                                                    Dispozice do tvaru G, umožňuje i u rozsáhlé kuchyně dosáhnout toho, že vše máte po ruce. Velký prostor je vždy praktičtější a zajímavější řešit s ostrůvkem. Omezíte tím našlapané kroky mezi varným a mycím centrem na minimum.


                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>221 706 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>71 242 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>14 329 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>21 500 Kč
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>328 776 Kč
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">
                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 5 -->
        <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid ">
                        <div class="row">
                            <div class="  col-md-12 mx-auto ">

                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->

                                        Diona

                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->
                                        Klasický rustik pro 4 člennou rodinu

                                    </p>
                                    <div id="car5" class="carousel slide " data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car5" data-slide-to="0" class="active"></li>
                                            <li data-target="#car5" data-slide-to="1"></li>
                                            <li data-target="#car5" data-slide-to="2"></li>
                                            <li data-target="#car5" data-slide-to="3"></li>
                                            <li data-target="#car5" data-slide-to="4"></li>
                                            <li data-target="#car5" data-slide-to="5"></li>




                                        </ul>

                                        <!-- The slideshow, změnit obrázky-->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-1.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-2.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-3.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-4.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-6.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/Carousel5/Doubravsky_Jihlava-tisk-7.jpg" />
                                            </div>

                                        </div>


                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car5" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car5" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row">

                                            <div class="col-md-12  ">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Krásný rustikální model Aida se spoustou úložného prostoru pro čtyřčlennou rodinu. Jedna z nejoblíbenějších rustikálních kuchyní, tentokrát v magnoliové barvě se zdobenou rustikální úchytkou.
                                            <br />
                                                    Dřevěná podlahová krytina v kuchyňském a přilehlém prostoru rozhodla o použití pracovní desky a obkladového panelu v dekoru dřeva. Plnou plochu skříněk oživují prosklené výplně z matného skla u části horních skříněk. Přáním zákazníka bylo umístit vestavnou horkovzdušnou troubu pod varnou desku. Na ni navazuje užší skříňka s drátěným výsuvem na kořenky a oleje.
                                            <br />
                                                    Mikrovlnná trouba dostala místo v sestavě horních skříněk. Vestavná lednička gorenje, za dvířky vysoké skříně, a výsuvný odsavač par, umožňují nenarušit rustikální vzhled kuchyně. Naopak přiznané nerez spotřebiče gorenje odlehčují rustik do moderní roviny.
											



                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->
                                                    Už při stavbě domu přemýšlejte o své nové kuchyni a okno umístěte do výšky budoucí pracovní desky. Pak lze elegantně, bez zbytečných schodků, protáhnout pracovní desku až k oknu.


                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>160 286 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>53 995 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>16 243 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>18 199 Kč
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>248 715 Kč
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary mt-2" data-dismiss="modal" type="button">
                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal 6 -->
        <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="close-modal" data-dismiss="modal">
                        <div class="lr">
                            <div class="rl"></div>
                        </div>
                    </div>
                    <div class="container-fluid ">

                        <div class="row">
                            <div class="  col-md-12 mx-auto ">
                                <div class="modal-body">
                                    <!-- info o realizaci -->
                                    <h2 class="text-uppercase">
                                        <!-- jméno kuchyně -->
                                        Rheia


                                    </h2>
                                    <p class="item-intro text-muted">
                                        <!-- krátký popis -->
                                        Návrat něžné vanilky

                                    </p>


                                    <div id="car6" class="carousel slide " data-ride="carousel">

                                        <!-- Indicators -->
                                        <ul class="carousel-indicators">
                                            <li data-target="#car6" data-slide-to="0" class="active"></li>
                                            <li data-target="#car6" data-slide-to="1"></li>
                                            <li data-target="#car6" data-slide-to="2"></li>
                                            <li data-target="#car6" data-slide-to="3"></li>
                                            <li data-target="#car6" data-slide-to="4"></li>
                                            <li data-target="#car6" data-slide-to="5"></li>




                                        </ul>

                                        <!-- The slideshow, změnit obrázky-->
                                        <div class="carousel-inner">
                                            <div class="carousel-item active">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2650-hdr.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2679.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2688.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2708.jpg" />
                                            </div>
                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2688.jpg" />
                                            </div>

                                            <div class="carousel-item">
                                                <img alt="kuchyně" src="img/carous/carousel6/Nemcova-Jihlava_2697T.jpg" />
                                            </div>
                                        </div>


                                        <!-- Left and right controls -->
                                        <a class="carousel-control-prev" href="#car6" data-slide="prev">
                                            <span class="carousel-control-prev-icon"></span>
                                        </a>
                                        <a class="carousel-control-next" href="#car6" data-slide="next">
                                            <span class="carousel-control-next-icon"></span>
                                        </a>
                                    </div>

                                    <div class="realizace-text">
                                        <div class="row">

                                            <div class="col-md-12  ">
                                                <h3>Co je dobré o realizaci vědět?</h3>
                                                <p class="text-body text-left">
                                                    <!-- placeholder, cobyste měli vědět -->
                                                    Malá kuchyňka v L dispozici. Matné provedení modelu REA kombinace dřevodekoru dub s barvou vanilka na spodních skříňkách.
                                                <br />
                                                    Dekor dubu se opakuje na korpusech skříněk, vysokých skříních a laminátové pracovní desce za níž chrání zeď obklad v imitaci betonu. Vrchní část skříněk disponuje výklopným otevíráním s podélnou úchytkou, která je využita u veškerého otevírání a svým podlouhlým tvarem opticky zvětšuje prostor kuchyně.
                                                <br />
                                                    Nerezové spotřebiče gorenje, všechny z řady gorenje Optimal, zastupuje vestavná pečící i mikrovlnná trouba, kombinovaná chladnička, komínová digestoř, myčka nádobí.
                                            



                                                </p>
                                            </div>
                                        </div>
                                        <div class="row ">


                                            <div class="col-lg-6 col-md-12">
                                                <h3>Tip designéra</h3>
                                                <p>
                                                    <!-- placeholder, tip designéra -->
                                                    Nebojte se i do světlé pracovní desky použít černý granitový kuchyňský dřez. Tak jako v této kuchyni, můžete jím skvěle doplnit sladěnou skupinu černých prvků v kuchyni – indukční varná deska, odsavač par a světla.


                                                </p>
                                            </div>
                                            <div class="col-lg-6 col-md-12">
                                                <table class="table table-striped  ">

                                                    <tbody>
                                                        <tr>
                                                            <td>Nábytek</td>
                                                            <td>112 490 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Spotřebiče</td>
                                                            <td>47 745 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Doplňky</td>
                                                            <td>20 193 Kč
                                                            </td>

                                                        </tr>
                                                        <tr>
                                                            <td>Montáž</td>
                                                            <td>17 168 Kč
                                                            </td>

                                                        </tr>

                                                        <tr class="font-weight-bold">
                                                            <td>Celkem</td>
                                                            <td>197 596 Kč
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn btn-primary" data-dismiss="modal" type="button">

                                        <span class="fas fa-times"></span>
                                        Zavřít ukázku</button>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    
        <script src="js/url_hid.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Plugin JavaScript -->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Contact form JavaScript -->
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

        <!-- Custom scripts for this template -->
        <script src="js/agency.min.js"></script>
    </form>
</body>
</html>
