# Pokedex-Nextzy

## API ที่ต้องใช้

- **GET** [Pokemon list] โดยจะใช้
  - https://raw.githubusercontent.com/wirunpong-j/PokedexAPIMock/master/pokemons.json 
  - หรือจาก https://pokeapi.co ก็ได้

## หน้าต่างต้องประกอบไปด้วย

- หน้า Splash screen

  <img src="https://raw.githubusercontent.com/wirunpong-j/Pokedex-Nextzy/master/Resource/splashscreen.gif" style="zoom:50%;" />

- หน้า Login

- หน้า Register

- หน้า Forgot Password

- หน้า Pokedex (Pokemon List)

- หน้า Search Pokemon

- หน้า Pokemon Detail (รายละเอียดของ Pokemon ตัวนั้น ๆ)

- หน้า My Pokemons (Pokemon list ของ User ที่ได้ทำการ bookmark ไว้)

- หน้า My Profile

- หน้า Edit My Profile

- หน้า Terms and Conditions

##  Checklist

- ใช้ Alamofire หรืออื่น ๆ ในการทำ API request
- ใช้ Codable ใน mapping ข้อมูลจาก JSON
- ใช้ Table View หรือ Scroll View ในการแสดงผลหน้า Pokemon Detail
- ใช้ Apple Maps หรือ Google Maps ในหน้า Pokemon Detail
- ใช้ Collection View ในการแสดงผลรายการของ Pokemon อย่างน้อย 1 แบบ
- ใช้ Firebase ในการ Login/Register/Forgot Password
- ใช้ Firebase ในการเก็บรูปภาพประจำตัวของ User
- ใช้ Firebase เก็บข้อมูล Pokemon ที่ User bookmark เอาไว้
- ใช้ design pattern MVVM ในการพัฒนา
- ใช้ Sign In With Apple
- Render Video Background
- Render ภาพจาก Url โดยใช้ Kingfisher หรืออื่น ๆ
- รูปภาพที่เป็นพวก icon หรือ button ที่ใช้ใน Application จะต้องเป็น Vector (ยกเว้นพวกรูป Pokemon เพราะ APIs เป็นคนส่งมาให้)
- สามารถ Search หา Pokemon จากใน List ได้ เช่น พิมพ์คำว่า “Ba” ก็จะแสดงรายการ Pokemon ที่มีคำว่า “Ba” ประกอบอยู่ด้วย
- ใช้ RxSwift
- ใช้ Pull to refresh
- ใช้ Animation หรือ Transition ต่าง ๆ เช่น Hero หรืออื่น ๆ
- ใช้ Navigation Bar
- ใช้ Tab Bar
- ใช้ Auto Layout
- App ต้องรองรับขนาดหน้าจอทุกขนาดของ iPhone
- มีการใช้ Loading View ต่าง ๆ
- มีการ Library ผ่าน Cocoapods หรือ Swift Package Manager
- มีการใช้ Library อื่น ๆ
