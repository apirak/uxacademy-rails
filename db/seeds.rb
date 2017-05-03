AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Alumni.create!(
  name: "TANET ZIA A.",
  position: "Co-Founder & Designer",
  company: "ShopSpot",
  company_url: "https://shopspotapp.com",
  photo: "tanet_zia_a_rectangle.jpg",
  feedback: %{
    เมื่อผมเรียนคอร์ด UX Academy ของพี่แบงค์จบผมรู้สึกทันทีว่า<br/>
    <b>"อยากให้ฝ่ายอื่นในทีมมาร่วมเรียนด้วย" </b><br/>
    เพราะเป็นคอร์ดเรียนสั้นๆ ที่ดีมากครับทำให้รู้ว่าจะสังเกต
    และ เรียนรู้ผู้ใช้งานอย่างไร และ นำข้อมูลที่ได้มาใช้
    อย่างไรให้เหมาะสมกับงานของเรา ส่วนบรรยากาศในการเรียน
    ก็ สนุก สบายๆ พี่แบงค์สอนเป็นกันเองมากๆครับ }
);

Alumni.create!(
  name: "NATENAPA J.",
  position: "Web Developer",
  company: "jeban.com",
  company_url: "https://jeban.com",
  photo: "natenapa_j_rectangle.jpg",
  feedback: %{
    <b>"คอร์สนี้มากกว่าแค่หลักการ แต่เติมเต็มไปด้วยประสบการณ์ค่ะ"</b><br/>
    คอร์สไม่ได้เน้นแค่หลักการ แต่บรรยายด้วยประสบการณ์จริงของ
    มีการจำลองการทำ UX ใน Class ทำให้เราเห็นภาพ
    ในการเอาหลักการไปทำงานจริงๆ ได้เจอกับปัญหาของuser
    ที่เราคาดไม่ถึงว่าต้องเจอและเราจะยึดจุดไหนในการตัดสินใจ
    แก้ปัญหาของ user และยังมี case study ที่น่าสนใจ
    ที่สามารถเอาไปประยุกต์ใช้กับองค์กรหลายรูปแบบอีกด้วยค่ะ }
);

Alumni.create!(
  name: "NATEE J.",
  position: "Chief Executive Officer",
  company: "Happio ",
  company_url: "http://www.happioteam.com/",
  photo: "natee_j_rectangle.jpg",
  feedback: %{
    <br/>
    <br/>
    <b>"ชอบมากครับ ได้ทั้งทฤษฎี ปฏิบัติ และการแบ่งปันประสบการณ์"</b>
    <br/>
    <br/>
    <br/> }
);

Alumni.create!(
  name: "KANYAPAT S.",
  position: "Co-Founder & Designer",
  company: "Vetside",
  company_url: "http://www.vetside.net",
  photo: "kanyapat_s_rectangle.jpg",
  feedback: %{
    การเปลี่ยนแปลงภายหลังคอมเมนต์ของพี่ถือเป็นหนึ่งในก้าวสำคัญของ<br/>
    Vetside คอมเมนต์ของพี่แบงก์ทำให้เรา <br/>
    <b>"เข้าใจความสำคัญของพื้นที่"</b><br/>
    และตำแหน่งบนจอเล็กๆว่ามันสำคัญขนาดไหน<br/>
    ขอบคุณพี่แบงค์ที่ช่วยปูพื้นฐานความเข้าใจในการทำ UX นะคะ }
);

Alumni.create!(
  name: "PANTHIP N.",
  position: "Freelance UI Designer",
  company: "Sunbzy",
  company_url: "https://www.behance.net/sunbzy",
  photo: "panthip_n_rectangle.jpg",
  feedback: %{
    ต้องขอบคุณคอร์สนี้ทำให้เข้าใจถึงกระบวนการคิด UX ก่อนที่จะลง UI จริง <br/>
    <br/>
    มองถึงปัญหาของ User เน้นเรื่องการ Brainstrom ทำให้เห็นภาพได้ง่ายขึ้น <br/>
    <br/>
    <b>"นำไปปรับใช้กับงานจริงได้ค่ะ"</b> }
);

Alumni.create!(
  name: "CHITRALADA K.",
  position: "Graphic Designer",
  company: "Garena Online",
  company_url: "http://www.garena.in.th",
  photo: "chitralada_k_rectangle.jpg",
  feedback: %{
    สิ่งที่หนูได้จริงๆ 60-70% เป็นคล้ายๆ สิ่งที่เคยเรียนมาค่ะ<br/>
    แต่ส่วนที่เป็นความรู้ใหม่เช่น การหลอกถามความต้องการที่แท้จริงก็เป็นเรื่องเล็กๆ ที่เป็นหัวใจเลยอ่ะค่ะ<br/>
    <b>"สถานการณ์ที่สร้างขึ้นมามันค่อนข้างชัด เข้าถึงง่าย <br/>
    เลยรู้สึกเข้าใจง่ายกว่าที่เคยอบรมมานะคะ"</b> }
);

Event.create!(
  name: "Fundamental, UI Workshop",
  start_date: Date.new(2016, 11, 12),
  end_date: Date.today,
  period: '1 Day',
  max_price: '4500',
  low_price: '',
  url: 'https://craftfig.co/courses/fundamental-ui2',
  url_gallery: 'http://bit.ly/ui-workshop',
  price_early_bird: 6500,
  price_regular: 8500,
  price_last_ticket: 9500,
  max_early_bird: 4,
  max_general: 4,
  max_last_ticket: 4
);

Event.create!(
  name: "Fundamental, UI Workshop",
  start_date: Date.new(2017, 01, 21),
  end_date: Date.today,
  period: '1 Day',
  max_price: '4500',
  low_price: '',
  url: 'https://craftfig.co/courses/fundamental-ui2',
  url_gallery: 'http://bit.ly/ui-workshop',
  price_early_bird: 6500,
  price_regular: 8500,
  price_last_ticket: 9500,
  max_early_bird: 4,
  max_general: 4,
  max_last_ticket: 4
);

Event.create!(
  name: "80:20, UX Workshop",
  start_date: Date.new(2017, 03, 23),
  end_date: Date.today,
  period: '2 Day',
  max_price: '9500',
  low_price: '6500',
  url: 'https://www.eventpop.me/e/1139-ux-workshop-march-2017',
  url_gallery: 'http://bit.ly/uxa_fb_gallery',
  price_early_bird: 6500,
  price_regular: 8500,
  price_last_ticket: 9500,
  max_early_bird: 4,
  max_general: 4,
  max_last_ticket: 4
);

Event.create!(
  name: "80:20, UX Workshop",
  start_date: Date.new(2017, 07, 6),
  end_date: Date.today,
  period: '2 Day',
  max_price: '9500',
  low_price: '6500',
  url: 'https://www.eventpop.me/e/1618',
  url_gallery: 'http://bit.ly/uxa_fb_gallery',
  price_early_bird: 6500,
  price_regular: 8500,
  price_last_ticket: 9500,
  max_early_bird: 4,
  max_general: 4,
  max_last_ticket: 4
);
