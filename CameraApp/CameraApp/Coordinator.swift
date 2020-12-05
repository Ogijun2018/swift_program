//
//  Coordinator.swift
//  CameraApp
//
//  Created by 荻野隼 on 2020/12/05.
//

import SwiftUI

class Coordinator: NSObject, UINavigationControllerDelegate,
                   UIImagePickerControllerDelegate {
    var parent:ImagePicker
    
    init(_ parent:ImagePicker){
        self.parent = parent
    }
    
    // iOSが自動的に呼び出すメソッド
    // UIImagePickerControllerDelegateプロトコル内で定義
    // このメソッド内に撮影された画像をどのように処理するかを書く
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // 辞書infoからオリジナルの画像を取り出す. 取り出す画像をUIImageクラス型にキャスティングする.
        let uiImage = info[.originalImage] as! UIImage
        // 取得した画像を写真アルバムに保存する
        UIImageWriteToSavedPhotosAlbum(uiImage, nil, nil, nil)
        parent.image = Image(uiImage: uiImage.redraw())
        parent.isPicking = false
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        parent.isPicking = false
    }
}
