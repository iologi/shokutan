// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import Raty from "./raty"

// ratyアクションの定義
window.raty = function(elem,opt){ 
    let raty =  new Raty(elem,opt)
    raty.init();
    return raty;
}