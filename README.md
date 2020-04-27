# Pokedex-Nextzy

APIs ที่ต้องใช้
- Get Pokemon list: https://raw.githubusercontent.com/wirunpong-j/PokedexAPIMock/master/pokemons.json
- Get Moves list: https://pokeapi.co/api/v2/move/{id or name}

หน้าต่างต้องประกอบไปด้วย 
- [x] หน้า Splash screen
- [x] หน้า Login
- [x] หน้า Register
- [ ] หน้า Forgot Password
- [x] หน้า Pokedex (Pokemon List)
- [x] หน้า Search Pokemon
- [x] หน้า Pokemon Detail (รายละเอียดของ Pokemon ตัวนั้น ๆ)
- [x] หน้า My Pokemons (Pokemon list ของ User ที่ได้ทำการ bookmark ไว้)
- [x] หน้า My Profile
- [ ] หน้า Edit My Profile

เกณฑ์การให้คะแนน
- [x] ใช้ Alamofire ในการทำ APIs request
- [x] ใช้ Codable ใน mapping ข้อมูลจาก JSON
- [x] ใช้ Table View หรือ Scroll View ในการแสดงผลหน้า Pokemon Detail
- [x] ใช้ Apple Maps หรือ Google Maps ในหน้า Pokemon Detail
- [x] ใช้ Collection View ในการแสดงผลรายการของ Pokemon อย่างน้อย 1 แบบ
- [x] ใช้ Firebase ในการ Login/Register/Forgot Password
- [x] ใช้ Firebase ในการเก็บรูปภาพประจำตัวของ User
- [x] ใช้ Firebase เก็บข้อมูล Pokemon ที่ User bookmark เอาไว้
- [x] ใช้ design pattern MVVM ในการพัฒนา
- [x] ใช้ Sign In With Apple
- [x] Render Video Background
- [x] Render ภาพจาก Url (Kingfisher)
- [x] รูปภาพที่เป็นพวก icon หรือ button ที่ใช้ใน Application จะต้องเป็น Vector (ยกเว้นพวกรูป Pokemon เพราะ APIs เป็นคนส่งมาให้)
- [x] สามารถ Search หา Pokemon จากใน List ได้ เช่น พิมพ์คำว่า “Ba” ก็จะแสดงรายการ Pokemon ที่มีคำว่า “Ba” ประกอบอยู่ด้วย
- [x] ใช้ RxSwift
- [x] ใช้ Pull to refresh
- [x] ใช้ Animation หรือ Transition ต่าง ๆ เช่น Hero หรืออื่น ๆ
- [x] ใช้ Navigation Bar
- [x] ใช้ Tab Bar
- [x] ใช้ Auto Layout
- [ ] App ต้องรองรับขนาดหน้าจอทุกขนาดของ iPhone
- [x] มีการใช้ Loading View ต่าง ๆ
- [x] มีการ Library ผ่าน Cocoapods หรือ Swift Package Manager
- [x] มีการใช้ Library อื่น ๆ
