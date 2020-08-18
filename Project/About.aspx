<%@ Page Title="About" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        div.desc {
            padding: 15px;
            text-align: center;
            font-family: "Comic Sans MS", cursive, sans-serif;
        }
        /*About*/
        .about {
            color: #d17d1c;
            font-size: 20px;
        }

        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Float four columns side by side */
        .column {
            float: left;
            /*width: -webkit-fill-available;*/
            width: 100%;
            padding: 12px 70px;
        }

        /* Remove extra left and right margins, due to padding */
        .row {
            margin: 0 -5px;
        }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        /* Responsive columns */
        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
        }

        /* Style the counter cards */
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            padding: 16px;
            text-align: center;
            background-color: #f1f1f1;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row">
        <h2 style="text-align: center;"><%: Title %></h2>
        <div class="column">
            <div class="card">
                <div class="desc about">A car (or automobile) is a wheeled motor vehicle used for transportation. Most definitions of cars say that they run primarily on roads, seat one to eight people, have four tires, and mainly transport people rather than goods.</div>

                <div class="desc about">Cars came into global use during the 20th century, and developed economies depend on them. The year 1886 is regarded as the birth year of the modern car when German inventor Karl Benz patented his Benz Patent-Motorwagen. Cars became widely available in the early 20th century. One of the first cars accessible to the masses was the 1908 Model T, an American car manufactured by the Ford Motor Company. Cars were rapidly adopted in the US, where they replaced animal-drawn carriages and carts, but took much longer to be accepted in Western Europe and other parts of the world.</div>

                <div class="desc about">Cars have controls for driving, parking, passenger comfort, and a variety of lights. Over the decades, additional features and controls have been added to vehicles, making them progressively more complex, but also more reliable and easier to operate.[citation needed] These include rear-reversing cameras, air conditioning, navigation systems, and in-car entertainment. Most cars in use in the 2010s are propelled by an internal combustion engine, fueled by the combustion of fossil fuels. Electric cars, which were invented early in the history of the car, became commercially available in the 2000s and are predicted to cost less to buy than gasoline cars before 2025. The transition from fossil fuels to electric cars features prominently in most climate change mitigation scenarios.</div>

            </div>
        </div>
        &nbsp;

        <h2 style="text-align: center;">History</h2>
        <div class="column">
            <div class="card">
                <div class="desc about">he first working steam-powered vehicle was designed — and quite possibly built — by Ferdinand Verbiest, a Flemish member of a Jesuit mission in China around 1672. It was a 65-cm-long scale-model toy for the Chinese Emperor that was unable to carry a driver or a passenger. It is not known with certainty if Verbiest's model was successfully built or run</div>

                <div class="desc about">Nicolas-Joseph Cugnot is widely credited with building the first full-scale, self-propelled mechanical vehicle or car in about 1769; he created a steam-powered tricycle. He also constructed two steam tractors for the French Army, one of which is preserved in the French National Conservatory of Arts and Crafts. His inventions were, however, handicapped by problems with water supply and maintaining steam pressure. In 1801, Richard Trevithick built and demonstrated his Puffing Devil road locomotive, believed by many to be the first demonstration of a steam-powered road vehicle. It was unable to maintain sufficient steam pressure for long periods and was of little practical use.</div>

                <div class="desc about">The development of external combustion engines is detailed as part of the history of the car but often treated separately from the development of true cars. A variety of steam-powered road vehicles were used during the first part of the 19th century, including steam cars, steam buses, phaetons, and steam rollers. Sentiment against them led to the Locomotive Acts of 1865.</div>

            </div>
        </div>
        &nbsp;

        <h2 style="text-align: center;">User interface</h2>
        <div class="column">
            <div class="card">
                <div class="desc about">Cars are equipped with controls used for driving, passenger comfort and safety, normally operated by a combination of the use of feet and hands, and occasionally by voice on 21st century cars. These controls include a steering wheel, pedals for operating the brakes and controlling the car's speed (and, in a manual transmission car, a clutch pedal), a shift lever or stick for changing gears, and a number of buttons and dials for turning on lights, ventilation and other functions. Modern cars' controls are now standardized, such as the location for the accelerator and brake, but this was not always the case. Controls are evolving in response to new technologies, for example the electric car and the integration of mobile communications.</div>

                <div class="desc about">Some of the original controls are no longer required. For example, all cars once had controls for the choke valve, clutch, ignition timing, and a crank instead of an electric starter. However new controls have also been added to vehicles, making them more complex. These include air conditioning, navigation systems, and in car entertainment. Another trend is the replacement of physical knobs and switches by secondary controls with touchscreen controls such as BMW's iDrive and Ford's MyFord Touch. Another change is that while early cars' pedals were physically linked to the brake mechanism and throttle, in the 2010s, cars have increasingly replaced these physical linkages with electronic controls.</div>

            </div>
        </div>
        &nbsp;

        <h2 style="text-align: center;">Lighting</h2>
        <div class="column">
            <div class="card">
                <div class="desc about">Cars are typically fitted with multiple types of lights. These include headlights, which are used to illuminate the way ahead and make the car visible to other users, so that the vehicle can be used at night; in some jurisdictions, daytime running lights; red brake lights to indicate when the brakes are applied; amber turn signal lights to indicate the turn intentions of the driver; white-colored reverse lights to illuminate the area behind the car (and indicate that the driver will be or is reversing); and on some vehicles, additional lights (e.g., side marker lights) to increase the visibility of the car. Interior lights on the ceiling of the car are usually fitted for the driver and passengers. Some vehicles also have a trunk light and, more rarely, an engine compartment light.</div>
            </div>
        </div>
        &nbsp;

        <h2 style="text-align: center;">Weight</h2>
        <div class="column">
            <div class="card">
                <div class="desc about">During the late 20th and early 21st century cars increased in weight due to batteries, modern steel safety cages, anti-lock brakes, airbags, and "more-powerful—if more-efficient—engines" and, as of 2019, typically weigh between 1 and 3 tonnes.[48] Heavier cars are safer for the driver from a crash perspective, but more dangerous for other vehicles and road users. The weight of a car influences fuel consumption and performance, with more weight resulting in increased fuel consumption and decreased performance. The SmartFortwo, a small city car, weighs 750–795 kg (1,655–1,755 lb). Heavier cars include full-size cars, SUVs and extended-length SUVs like the Suburban.</div>

                <div class="desc about">According to research conducted by Julian Allwood of the University of Cambridge, global energy use could be greatly reduced by using lighter cars, and an average weight of 500 kg (1,100 lb) has been said to be well achievable. [better source needed] In some competitions such as the Shell Eco Marathon, average car weights of 45 kg (99 lb) have also been achieved. These cars are only single-seaters (still falling within the definition of a car, although 4-seater cars are more common), but they nevertheless demonstrate the amount by which car weights could still be reduced, and the subsequent lower fuel use (i.e. up to a fuel use of 2560 km/l).</div>
            </div>
        </div>
        &nbsp;
    </div>

</asp:Content>
