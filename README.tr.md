<h1 align="center">Minecraft Harita Yapımı için Veri Odaklı GUI Kütüphanesi</h1>

<p align="center">
  <b>🟢 Minecraft 1.21.11+</b><br>
  Vanilla datapack · Mod yok · Hile yok
</p>

<p align="center">
  <a href="#tr">🇹🇷 Türkçe</a> ·
  <a href="#en">🇬🇧 English</a>
</p>

<p align="center">
  <img src="repo/gui.gif" width="380" alt="GUI demo">
</p>

<p align="center">
  <i>5 dakikadan kısa sürede, tamamen oyun içinden oluşturulmuş bir GUI.</i>
</p>

<hr>
<h2 id="tr">📌 Proje Hakkında</h2>

<p>
Bu datapack, Minecraft harita yapımcılarının <b>karmaşık, sürdürülebilir ve
çok oyunculu uyumlu</b> grafik arayüzler (GUI) oluşturabilmesini sağlar.
</p>

<p>
Tüm GUI sistemi, <b>özel SNBT içeren item’ların</b> sandıklara yerleştirilmesi
üzerine kuruludur. Dosya düzenleme, JSON yazma veya datapack içini kurcalama
gerekmez. Datapack bir <b>black-box</b> gibi çalışır.
</p>

<p>
Her item, bir <b>grafik bileşen (widget)</b> olarak ele alınır. Bu yaklaşım,
gerçek dünyadaki GUI sistemlerine birebir karşılık gelir.
</p>
<h3>🧱 GUI Türleri</h3>

<ul>
  <li>
    <b>Blok Varlık GUI’leri (Block Entity GUIs)</b><br>
    Sabit bir konumda bulunur, tüm oyuncular tarafından paylaşılır ve
    derleme sırasında oluşturulur.
  </li>
  <li>
    <b>Oyuncuya Özel GUI’ler (Chest Boat GUIs)</b><br>
    Oyuncuya port edilir, kişiseldir ve dünyanın herhangi bir yerinden açılabilir.
  </li>
</ul>
<h3>✨ Temel Avantajlar</h3>

<ul>
  <li>✔ Tamamen vanilla – mod veya client gerektirmez</li>
  <li>✔ Multiplayer-safe – inventory bozulmaz</li>
  <li>✔ Widget tabanlı mimari (button, switch, counter, vb.)</li>
  <li>✔ Oyuncuya özel GUI desteği</li>
  <li>✔ GUI’ler oyun içinden tasarlanır</li>
  <li>✔ 4+ yıl aktif bakım ve geliştirme</li>
  <li>✔ Minecraft Realms’te öne çıkan haritalarda kullanıldı</li>
</ul>
<h3>📦 Kurulum</h3>

<ol>
  <li>Datapack’i dünyanızın <code>datapacks</code> klasörüne ekleyin</li>
  <li>Dünya içinde <code>/reload</code> komutunu çalıştırın</li>
  <li>
    <code>/function ajjgui:__install</code> komutunu kullanarak sistemi kurun
  </li>
</ol>

<p>
Kurulumdan sonra datapack, GUI derleme kiti içeren bir <b>shulker box</b>
oluşturur. Bu kutu yüklü chunk içinde kalmalıdır ve yok edilmemelidir.
</p>
<h3>🧠 Tasarım Felsefesi</h3>

<p>
Bu proje, “harita yapımcısı kod yazmak zorunda kalmamalı” fikri üzerine
inşa edilmiştir.
</p>

<p>
GUI’ler, teknik detayları gizleyen bir sistem üzerinden çalışır.
Mapmaker yalnızca:
</p>

<ul>
  <li>Item’ları yerleştirir</li>
  <li>SNBT ile davranışlarını belirler</li>
  <li>GUI’yi derler</li>
</ul>

<p>
Geri kalan tüm karmaşık işlem datapack tarafından yönetilir.
</p>
<h3>🔗 İndirme ve Bağlantılar</h3>

<ul>
  <li>
    📦 <a href="https://github.com/AjjMC/ajjgui/archive/refs/heads/main.zip">
    GitHub ZIP İndir</a>
  </li>
  <li>
    🌐 <a href="https://modrinth.com/datapack/ajjgui">
    Modrinth Proje Sayfası</a>
  </li>
  <li>
    🐞 Sorular ve hatalar için <b>Issues</b> sekmesini kullanın
  </li>
</ul>
