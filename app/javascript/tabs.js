document.addEventListener("turbolinks:load", () => {
  const tabItems = document.querySelectorAll('.tab-item');
  const tabContentItems = document.querySelectorAll('.tab-content-item');
  
  // タブを選択する
  function selectItem(e) {
    removeBorder();
    removeShow();
    // 選択したタブにボーダーを追加する
    this.classList.add('tab-border');
    // 選択したタブの中身を取得する
    const tabContentItem = document.querySelector(`#${this.id}-content`);
    // 選択したタブに紐づく中身を表示する
    tabContentItem.classList.add('show');
  }
  
  function removeBorder(){
    tabItems.forEach(item => item.classList.remove('tab-border'));
  }
  
  function removeShow() {
    tabContentItems.forEach(item => item.classList.remove('show'));
  }
  
  // 各タブにメソッドをセットする
  tabItems.forEach(item => item.addEventListener('click', selectItem));
})