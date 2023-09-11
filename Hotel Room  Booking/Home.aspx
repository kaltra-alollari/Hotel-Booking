<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link rel="stylesheet" href="main.css" />
         <script src="https://kit.fontawesome.com/dbed6b6114.js"></script>
     
    </head>
<body>
   <form id="form1" runat="server">
    <header class="header" id="header">
        <div class="head-top">
            <div class="site-name">
                <span>Kristal</span>
            </div>
            <div class="site-nav">
                <span id="nav-btn"> MENU <i class="fas fa-bars"></i></span>
            </div>
        </div>

        <div class="head-bottom flex">
            <h2>NICE AND COMFORTABLE PLACE TO STAY</h2>
            <p> Kristal Hotel, elegant dhe luksoz, është një Hotel, që i vë theksin detajeve që e bëjnë qëndrimin tuaj një përvojë unike dhe të plotë. Me një vendndodhje harmonike në tiranë ndërmjet qytetit dhe zonës industriale, Kristal Hotel është lehtësisht i aksesueshëm brenda vetëm disa minutash.</p>
          <a href="SignUp.aspx" > <button type="button" class="head-btn" > GET STARTED</button></a> 
           
        </div>
    </header>
     <!-- fundi i header -->

        <!-- side navbar -->
        <div class = "sidenav" id = "sidenav">
            <span class = "cancel-btn" id = "cancel-btn">
                <i class = "fas fa-times"></i>
            </span>

            <ul class = "navbar">
                <li><a href = "#header">home</a></li>
                <li><a href = "#services">services</a></li>
                <li><a href = "#rooms">rooms</a></li>
                <li><a href = "#customers">customers</a></li>
            </ul>
            <asp:Button ID="Button1" class = "btn sign-up"  runat="server" Text="sign up" OnClick="Button1_Click" />                             
            <asp:Button ID="Button2" class = "btn log-in" runat="server" Text="log in" OnClick="Button2_Click" />
           
        </div>
        <!-- side navbar -->

        <!-- fullscreen modal -->
        <div id = "modal"></div>
        <!-- end of fullscreen modal -->

        <!-- permbajtja e trupit  -->
        <section class = "services sec-width" id = "services">
            <div class = "title">
                <h2>services</h2>
            </div>
            <div class = "services-container">
                <!-- sherbimet -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-utensils"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Food Service/ Food Runner</h2>
                        <p>Restoranti “Paris” është restoranti më i ri i kompanisë së hoteleve “Kristal”. Me vendndodhje në Kristal Fashion Hotel, menyja e restorantit kombinon një dietë të shëndetshme me përbërës cilësore, që kanë veti të shumta ushqyese</p>
                        <br/>
                       
                       <button type = "button" class = "btn">Know More</button> 
                    </div>
                </article>
                <!-- fundi i sherbimeve -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-swimming-pool"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>SPA</h2>
                        <p>Spa është vendi ku kombinimi i bimëve aromatike, ujit të ngrohtë, masazheve terapeutike, trajtimeve të fytyrës dhe produkteve të pastra organike, bashkohen për t'ju dhuruar një eksperiencë luksoze SPA-je. Në  Spa  ofrojmë trajtime natyrore të frymëzuara nga ritualet e lashta. Edhe një qëndrim i shkurtër mund t'ju japë një efekt të thellë dhe të qëndrueshëm të relaksimit në trup dhe ndjenjën e mirëqenies.</p>
                      
                  <button type = "button" class = "btn">Know More</button> 
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fas fa-broom"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Eventet</h2>
                        <p>Zgjedhja e përkryer për evente dhe dasmaZgjidhni ti bëni të paharruara eventet tuaja më të rëndësishme të organizuara në formën e darkave gala, pritjeve me kokteil apo të celebroni dasmën tuaj dhe të zgjidhni mes zonave të ndryshme, tarraca e restorantit apo zona e kopshtit dhe e pishinës.</p>
                    <button type = "button" class = "btn">Know More</button> 
                    </div>
                </article>
                <!-- end of single service -->
                <!-- single service -->
                <article class = "service">
                    <div class = "service-icon">
                        <span>
                            <i class = "fa fa-pencil fa-fw"></i>
                        </span>
                    </div>
                    <div class = "service-content">
                        <h2>Seminare & Konferenca</h2>
                        <p>Salla konference dhe banketesh të përshtatshme për mbledhje dhe evente.Eventet më të rëndësishme lokale e ndërkombëtare në formën e konferencave të mëdha, konferenca shtypi apo takime private mbajnë vulën e „ Hotel “.</p>
                 <button type = "button" class = "btn">Know More</button>
                    </div>
                </article>
                <!-- end of single service -->
            </div>
        </section> 
   

        <section class = "rooms sec-width" id = "rooms">
            <div class = "title">
                <h2>rooms</h2>
            </div>
            <div class = "rooms-container">
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "images/img1.jpg" alt = "room image" />
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Sherbim ne dhome/Mengjesi i perfshire ne cmim
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Ajer i kondicionuar
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                 Vizitorët maksimalë për dhomë: 4
                            </li>
                        </ul>
                        <p>Me pamje nga Kryeministria dhe pamjet e horizontit Tiranes, kjo  dhoma gjumi mbretërore 141 metra katrorë përmban zona të ndara të jetesës dhe punës, banjo mahnitëse mermeri italiane me vaskë spa të zhytur dhe hyrje ekskluzive në Grand Club Lounge. Kjo është një dhome premium.</p>
                       
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                          <asp:Button ID="Button4" class="btn" runat="server" Text="Book Now" OnClick="Button4_Click" />
                        
                    </div>
                </article>
                <!-- end of single room -->
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "images/img2.jpg" alt = "room image" />
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                   Sherbim ne dhome
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Ajer i kondicionuar
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Vizitorët maksimalë për dhomë: 3
                            </li>
                        </ul>
                        <p>
                        Me dy dhoma luksoze dhe pamje 180 ° të qytetit, kjo suitë 80 metra katrorë përmban një shtrat mbretëror, banjo të mermerit dhe hyrje ekskluzive në Grand Club Lounge. Kjo është një suitë standarde.</p>
                      
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                          <asp:Button ID="Button5" class="btn" runat="server" Text="Book Now" OnClick="Button5_Click" />
                        
                    </div>
                </article>
                <!-- end of single room -->
                <!-- single room -->
                <article class = "room">
                    <div class = "room-image">
                        <img src = "images/img3.jpg" alt = "room image" />
                    </div>
                    <div class = "room-text">
                        <h3>Luxury Rooms</h3>
                        <ul>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Free WiFi
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                                Sherbim ne dhome
                            </li>
                            <li>
                                <i class = "fas fa-arrow-alt-circle-right"></i>
                               Vizitorët maksimalë për dhomë: 3
                            </li>
                        </ul>
                        <br/> <br/> <br/>
                        <p>Dhome gjumi per nje person, perfshin nje garderob te madhe, hapsire e mjaftueshme per nje person. 
                        Ju mund të shijoni komoditetin e thjeshtë të hapësirës me të gjitha lehtësitë moderne në Dhomat tona Superiore.</p>
                        
                        <p class = "rate">
                            <span>$99.00 /</span> Per Night
                        </p>
                          <asp:Button ID="Button6" class="btn" runat="server" Text="Book Now" OnClick="Button6_Click" />
                        
                    </div>
                </article>
                <!-- end of single room -->
            </div>
        </section>


        <section class = "customers" id = "customers">
            <div class = "sec-width">
                <div class = "title">
                    <h2>customers</h2>
                </div>
                <div class = "customers-container">
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>We Loved it</h3>
                        <p>“Location was superb.Staff were amazing.Room was superb.Palm court for afternoon tea should be experienced .Champagne bar in the lobby wonderful ambiance.For a special occasion this hotel is pure luxury.”</p>
                        <img src = "images/cus2.jpg" alt = "customer image" />
                        <span>Joana, United Kingdom</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Comfortable Living</h3>
                        <p>“Vendndodhja mu ne zemer te Tiranes dhe afer liqenit na inspiroj, qendrimi kater ditor ne kete hotel ne 
                        na dha nje impakt tjeter per hotelin dhe cilesine e tij/ sherbimet. 
                        <br /> <br/>
                         Highly recommended.”</p>
                        <img src = "images/pic.png" alt = "customer image" />
                        <span>Eva, Fier</span>
                    </div>
                    <!-- end of single customer -->
                    <!-- single customer -->
                    <div class = "customer">
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                        <h3>Nice Place</h3>
                        <p> "Gjithcka eshte perfekte. Pamje e mrekullueshme dhe sherbim i shpejte. Personat e stafit ishin shume 
                        te sjellshem. Mengjesi ne dhome ishte shume i shijshem. Everything was great"</p>
                        <img src = "images/kaltra.jpeg" alt = "customer image" />
                        <span>Julind Kaltra, Vlore</span>
                    </div>
                    <!-- end of single customer -->
                </div>
            </div>
        </section>
        <!-- end of body content -->
        
        <!-- footer -->
        <footer class = "footer">
            <div class = "footer-container">
                <div>
                    <h2>About Us </h2>
                    <p>I pozicionuar në zemër të Tiranës, në bulevardin kryesor pranë Kryeministrisë dhe Kuvendit. Të gjitha institucionet e rëndësishme si ministritë apo ambasadat si edhe qendrat tregtare ndodhen pak hapa larg hotelit.</p>
                    <ul class = "social-icons">
                        <li class = "flex">
                            <i class = "fa fa-twitter fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-facebook fa-2x"></i>
                        </li>
                        <li class = "flex">
                            <i class = "fa fa-instagram fa-2x"></i>
                        </li>
                    </ul>
                </div>

                <div>
                    <h2>Privacy</h2>
                    <a href = "#">Career</a>
                    <a href = "#">About Us</a>
                    <a href = "#">Contact Us</a>
                    <a href = "#services">Services</a>
                </div>

                <div>
                    <h2>Have A Question</h2>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-map-marker-alt"></i>
                        </span>
                        <span>
                            Bulevardi Dëshmorët e Kombit 
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-phone-alt"></i>
                        </span>
                        <span>
                            T: +355 4 2235035
                        </span>
                    </div>
                    <div class = "contact-item">
                        <span>
                            <i class = "fas fa-envelope"></i>
                        </span>
                        <span>
                            info.Kristal@domain.com
                        </span>
                    </div>
                </div>
            </div>
        </footer>
        <!-- fundi i footer -->
        </form>
       <script src="script/script.js"></script>
    </body>
</html>

