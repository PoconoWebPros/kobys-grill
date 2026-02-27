#!/bin/bash
BASE="https://s3-media0.fl.yelpcdn.com/bphoto"

# 1. hero-steak - ribeye and skirt steak platter
curl -sL "$BASE/aJYcrbdYr_5StaMcaDUXSw/o.jpg" -o hero-steak.jpg
# 2. mezze - hummus mezze starter
curl -sL "$BASE/_U6rPhgV7UZ8PziNNMr3bg/o.jpg" -o mezze.jpg
# 3. shakshuka
curl -sL "$BASE/8gLo3RB6C0eJXU00cc3lcg/o.jpg" -o shakshuka.jpg
# 4. salmon - try chicken thighs with veggies as closest (will look for salmon separately)
curl -sL "$BASE/EYNC-yXQe7dpq99VW0YLJQ/o.jpg" -o salmon-alt-chicken.jpg
# 5. steak-plated - picanha steak and fries
curl -sL "$BASE/uV-DTuycNE6NDqcFMsjegQ/o.jpg" -o steak-plated.jpg
# 6. falafel-hummus
curl -sL "$BASE/VV3OFahfweNwkilRvr0HEw/o.jpg" -o falafel-hummus.jpg
# 7. pita-sandwich - pita and hummus/israeli salad
curl -sL "$BASE/iaXX1q5UlOXw36biRSkHeA/o.jpg" -o pita-sandwich.jpg
# 8. salad - starter salads
curl -sL "$BASE/JnzWHXWdCJStMp479sGQSQ/o.jpg" -o salad.jpg
# 9. steak-family - dinner for TWO grilled platter
curl -sL "$BASE/_1nUns87SaHtxvm6y93QQw/o.jpg" -o steak-family.jpg
# 10. mixed grill
curl -sL "$BASE/sufC1J0oeYVgG2SPQfrd9Q/o.jpg" -o mixed-grill.jpg
# 11. grilled platter for 2
curl -sL "$BASE/X9AjdOC5sOO2Qzc_OdQ27g/o.jpg" -o grilled-platter-2.jpg
# 12. skirt steak amazing
curl -sL "$BASE/BWtIzMRwW9o7R-oemenTNw/o.jpg" -o skirt-steak-hero.jpg
# 13. hummus and chopped salad
curl -sL "$BASE/P65bC-mG7VFWegwAMHRGIQ/o.jpg" -o hummus-salad.jpg
# 14. catering party
curl -sL "$BASE/0W0tiPzSley03pkhu-oUJg/o.jpg" -o events-venue.jpg
# 15. kofta and skirt steak
curl -sL "$BASE/Q8nvikHt3t8ibcSIyBfjpA/o.jpg" -o kofta-skirt.jpg
# 16. platter mixed for 2
curl -sL "$BASE/vSWje4dms9vyDL6P8OUZGA/o.jpg" -o platter-mixed.jpg
# 17. lamb burger (pita sandwich alt)
curl -sL "$BASE/D3svnu0L1BvS6dRkG8G6tw/o.jpg" -o lamb-burger.jpg
# 18. prime skirt steak 
curl -sL "$BASE/bgqMuRsOdDS8uHGl_v8RYw/o.jpg" -o prime-skirt.jpg
# 19. steak on creek
curl -sL "$BASE/Jjc7-NzVpoCqv1oEke0_3g/o.jpg" -o steak-creek.jpg

echo "Done downloading"
