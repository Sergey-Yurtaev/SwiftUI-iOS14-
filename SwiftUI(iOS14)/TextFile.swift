//
//  TextFile.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI
import UniformTypeIdentifiers

struct TextFile: FileDocument {
    static var readableContentTypes: [UTType] = [.plainText]
    var text = ""
    
    init(initialText: String = "") {
        text = initialText
    }
    
    init(configuration: ReadConfiguration) throws {
        if let data = configuration.file.regularFileContents {
            text = String(decoding: data, as: UTF8.self)
        }
    }
    
    func fileWrapper(configuration: WriteConfiguration) throws -> FileWrapper {
        let data = Data(text.utf8)
        if var fileWrapper = configuration.existingFile {
            fileWrapper = FileWrapper(regularFileWithContents: data)
            return fileWrapper
        }
        
        return FileWrapper()
    }
}

struct DocumentBase: View {
    @Binding var document: TextFile
    var body: some View {
        TextEditor(text: $document.text)
    }
}



struct DocumentBase_Previews: PreviewProvider {
    static var previews: some View {
        DocumentBase(document: .constant(TextFile()))
    }
}
