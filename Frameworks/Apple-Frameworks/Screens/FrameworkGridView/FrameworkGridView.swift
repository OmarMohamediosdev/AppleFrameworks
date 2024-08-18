//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Sean Allen on 10/30/20.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
//            ScrollView {
//                LazyVGrid(columns: viewModel.columns) {
//                    ForEach(MockData.frameworks) { framework in
//                        NavigationLink(value: framework) {
//                            FrameworkTitleView(framework: framework)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("🍎 Frameworks")
//            .navigationDestination(for: Framework.self) { framework in
//                FrameworkDetailView(framework: framework)
//            }
            
            
            List {
                ForEach(MockData.frameworks) { framework in
                    ScrollView {
                        NavigationLink(destination: FrameworkDetailView(framework: framework)) {
                            FrameworkIconView(framework: framework)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("🍎 Frameworks")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
