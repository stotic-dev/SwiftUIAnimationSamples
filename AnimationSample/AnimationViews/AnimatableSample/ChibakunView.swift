//
//  ChibakunView.swift
//  AnimationSample
//
//  Created by 佐藤汰一 on 2024/09/26.
//

import Foundation
import SVG2Path
import SwiftUI

struct ChibakunView: View {
    
    @State var isShown: Bool = true
    @State var scale: CGFloat = 0.5
    
    var body: some View {
        ZStack {
            Color.red
            ChibakunShape(scale: scale)
                .stroke(lineWidth: 1)
                .trim(to: isShown ? 1 : 0)
//                .scale(scale)
        }
        .onTapGesture {
            withAnimation(.linear(duration: 10.0)) {
                isShown.toggle()
                scale = scale == 1 ? 0.5 : 1
                print("isShown: \(isShown), scale: \(scale)")
            }
        }
//        Button {
//            
//            guard let fileURL = Bundle.main.url(forResource: "chibakun", withExtension: "txt"),
//                  let text = try? String(contentsOf: fileURL, encoding: .utf8) else {
//                      fatalError("読み込み出来ません")
//                  }
//            
//            print("svg text: \(String(describing: text))")
//
//            let svg2Path = SVG2Path()
//            let data = svg2Path.extractPath(text: text)
//            data?.paths.forEach { path in
//                print(path.codeString())
//            }
//        } label: {
//            Text("Convert")
//        }
    }
}

struct ChibakunShape: Shape {
    
    var scale: CGFloat
    
    var animatableData: CGFloat {
        
        get { scale }
        set { scale = newValue }
    }
    
    nonisolated func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 10.1818, y: 38.9393))
        
        path.addCurve(to: CGPoint(x: 35.1818, y: 7.1212),
                      control1: CGPoint(x: 10.1818, y: 20.9247),
                      control2: CGPoint(x: 15.6570, y: 7.1212))
        path.addCurve(to: CGPoint(x: 49.9125, y: 12.8451),
                      control1: CGPoint(x: 42.9274, y: 7.1212),
                      control2: CGPoint(x: 44.7123, y: 7.6449))
        path.addCurve(to: CGPoint(x: 57.1515, y: 28.3333),
                      control1: CGPoint(x: 52.2716, y: 15.2042),
                      control2: CGPoint(x: 56.7282, y: 24.7354))
        path.addCurve(to: CGPoint(x: 76.1751, y: 62.4242),
                      control1: CGPoint(x: 58.4438, y: 39.3179),
                      control2: CGPoint(x: 69.3782, y: 53.6853))
        path.addCurve(to: CGPoint(x: 113.2960, y: 98.7878),
                      control1: CGPoint(x: 87.1640, y: 76.5528),
                      control2: CGPoint(x: 97.2452, y: 89.7591))
        path.addCurve(to: CGPoint(x: 140.4850, y: 102.2390),
                      control1: CGPoint(x: 120.9590, y: 103.0980),
                      control2: CGPoint(x: 131.8640, y: 103.8970))
        path.addCurve(to: CGPoint(x: 172.3030, y: 79.1750),
                      control1: CGPoint(x: 151.5690, y: 100.1070),
                      control2: CGPoint(x: 163.6080, y: 85.9680))
        path.addCurve(to: CGPoint(x: 197.7240, y: 63.1818),
                      control1: CGPoint(x: 180.2250, y: 72.9858),
                      control2: CGPoint(x: 189.2550, y: 68.5141))
        path.addCurve(to: CGPoint(x: 229.8790, y: 50.3030),
                      control1: CGPoint(x: 207.8010, y: 56.8368),
                      control2: CGPoint(x: 218.7650, y: 54.2723))
        path.addCurve(to: CGPoint(x: 262.5390, y: 43.4848),
                      control1: CGPoint(x: 239.4220, y: 46.8945),
                      control2: CGPoint(x: 252.4110, y: 43.4848))
        path.addCurve(to: CGPoint(x: 285.9390, y: 44.9999),
                      control1: CGPoint(x: 269.8400, y: 43.4848),
                      control2: CGPoint(x: 279.2400, y: 41.8472))
        path.addCurve(to: CGPoint(x: 306.8150, y: 54.0909),
                      control1: CGPoint(x: 291.1300, y: 47.4428),
                      control2: CGPoint(x: 301.2910, y: 53.8699))
        path.addCurve(to: CGPoint(x: 350.7540, y: 48.3669),
                      control1: CGPoint(x: 321.7690, y: 54.6890),
                      control2: CGPoint(x: 336.1080, y: 51.0299))
        path.addCurve(to: CGPoint(x: 381.3940, y: 46.5151),
                      control1: CGPoint(x: 361.0200, y: 46.5004),
                      control2: CGPoint(x: 370.9240, y: 46.5151))
        path.addCurve(to: CGPoint(x: 395.0300, y: 53.2491),
                      control1: CGPoint(x: 388.6810, y: 46.5151),
                      control2: CGPoint(x: 391.3150, y: 46.7476))
        path.addCurve(to: CGPoint(x: 402.6900, y: 68.4006),
                      control1: CGPoint(x: 398.0260, y: 58.4921),
                      control2: CGPoint(x: 400.9040, y: 62.1472))
        path.addCurve(to: CGPoint(x: 401.0910, y: 101.3970),
                      control1: CGPoint(x: 405.1530, y: 77.0206),
                      control2: CGPoint(x: 412.7770, y: 94.5228))
        path.addCurve(to: CGPoint(x: 382.1520, y: 115.4540),
                      control1: CGPoint(x: 394.3380, y: 105.3700),
                      control2: CGPoint(x: 389.2010, y: 111.5380))
        path.addCurve(to: CGPoint(x: 361.0240, y: 122.3570),
                      control1: CGPoint(x: 375.3690, y: 119.2220),
                      control2: CGPoint(x: 368.2330, y: 120.2970))
        path.addCurve(to: CGPoint(x: 348.0610, y: 129.0910),
                      control1: CGPoint(x: 355.1540, y: 124.0340),
                      control2: CGPoint(x: 348.0610, y: 121.5140))
        path.addCurve(to: CGPoint(x: 347.7240, y: 140.4540),
                      control1: CGPoint(x: 348.0610, y: 132.2940),
                      control2: CGPoint(x: 349.1490, y: 137.6050))
        path.addCurve(to: CGPoint(x: 339.0540, y: 154.7640),
                      control1: CGPoint(x: 345.2880, y: 145.3270),
                      control2: CGPoint(x: 341.1120, y: 149.6190))
        path.addCurve(to: CGPoint(x: 316.2420, y: 189.2760),
                      control1: CGPoint(x: 334.2910, y: 166.6700),
                      control2: CGPoint(x: 323.3880, y: 178.5580))
        path.addCurve(to: CGPoint(x: 308.6670, y: 217.3910),
                      control1: CGPoint(x: 310.6530, y: 197.6610),
                      control2: CGPoint(x: 308.6670, y: 207.3670))
        path.addCurve(to: CGPoint(x: 325.3330, y: 282.7950),
                      control1: CGPoint(x: 308.6670, y: 241.1940),
                      control2: CGPoint(x: 320.7100, y: 259.6760))
        path.addCurve(to: CGPoint(x: 326.8480, y: 314.6970),
                      control1: CGPoint(x: 327.4330, y: 293.2950),
                      control2: CGPoint(x: 326.8480, y: 303.9420))
        path.addCurve(to: CGPoint(x: 326.8480, y: 324.5450),
                      control1: CGPoint(x: 326.8480, y: 317.9800),
                      control2: CGPoint(x: 326.8480, y: 321.2630))
        path.addCurve(to: CGPoint(x: 323.8180, y: 331.3640),
                      control1: CGPoint(x: 326.8480, y: 327.1700),
                      control2: CGPoint(x: 324.1240, y: 328.9150))
        path.addCurve(to: CGPoint(x: 307.1520, y: 338.9390),
                      control1: CGPoint(x: 323.3250, y: 335.3120),
                      control2: CGPoint(x: 310.5260, y: 338.9390))
        path.addCurve(to: CGPoint(x: 292.0000, y: 345.0000),
                      control1: CGPoint(x: 302.5700, y: 338.9390),
                      control2: CGPoint(x: 294.0180, y: 340.9630))
        path.move(to: CGPoint(x: 292.0000, y: 345.0000))
        path.addCurve(to: CGPoint(x: 279.8790, y: 369.5790),
                      control1: CGPoint(x: 292.0000, y: 354.0670),
                      control2: CGPoint(x: 287.4290, y: 364.3880))
        path.addCurve(to: CGPoint(x: 271.9660, y: 379.8480),
                      control1: CGPoint(x: 278.3010, y: 370.6640),
                      control2: CGPoint(x: 273.1830, y: 377.7800))
        path.addCurve(to: CGPoint(x: 264.3910, y: 390.1180),
                      control1: CGPoint(x: 269.9070, y: 383.3500),
                      control2: CGPoint(x: 267.2640, y: 387.2440))
        path.addCurve(to: CGPoint(x: 226.8480, y: 430.1850),
                      control1: CGPoint(x: 251.7350, y: 402.7740),
                      control2: CGPoint(x: 243.0710, y: 420.6420))
        path.addCurve(to: CGPoint(x: 213.2120, y: 454.0910),
                      control1: CGPoint(x: 219.5530, y: 434.4770),
                      control2: CGPoint(x: 213.6640, y: 445.9610))
        path.addCurve(to: CGPoint(x: 210.5190, y: 477.1550),
                      control1: CGPoint(x: 212.9530, y: 458.7590),
                      control2: CGPoint(x: 213.2310, y: 473.7650))
        path.addCurve(to: CGPoint(x: 160.9390, y: 490.4550),
                      control1: CGPoint(x: 200.9910, y: 489.0650),
                      control2: CGPoint(x: 176.2810, y: 490.4550))
        path.addCurve(to: CGPoint(x: 126.1750, y: 491.9700),
                      control1: CGPoint(x: 149.7010, y: 490.4550),
                      control2: CGPoint(x: 137.7480, y: 491.9700))
        path.addCurve(to: CGPoint(x: 101.0910, y: 474.5450),
                      control1: CGPoint(x: 118.5720, y: 491.9700),
                      control2: CGPoint(x: 101.0910, y: 483.6720))
        path.addCurve(to: CGPoint(x: 134.0880, y: 446.1780),
                      control1: CGPoint(x: 101.0910, y: 458.1440),
                      control2: CGPoint(x: 125.2390, y: 456.0100))
        path.addCurve(to: CGPoint(x: 140.4850, y: 420.7580),
                      control1: CGPoint(x: 139.9820, y: 439.6290),
                      control2: CGPoint(x: 140.4850, y: 429.2070))
        path.addCurve(to: CGPoint(x: 131.7310, y: 399.5450),
                      control1: CGPoint(x: 140.4850, y: 410.9520),
                      control2: CGPoint(x: 135.8940, y: 407.8730))
        path.addCurve(to: CGPoint(x: 121.1250, y: 377.9970),
                      control1: CGPoint(x: 128.4800, y: 393.0440),
                      control2: CGPoint(x: 125.2300, y: 383.1280))
        path.addCurve(to: CGPoint(x: 116.2420, y: 366.2120),
                      control1: CGPoint(x: 119.5500, y: 376.0280),
                      control2: CGPoint(x: 116.5480, y: 368.8090))
        path.addCurve(to: CGPoint(x: 110.1820, y: 356.3640),
                      control1: CGPoint(x: 115.9360, y: 363.6090),
                      control2: CGPoint(x: 111.5080, y: 359.3470))
        path.addCurve(to: CGPoint(x: 92.0000, y: 303.3330),
                      control1: CGPoint(x: 102.3890, y: 338.8290),
                      control2: CGPoint(x: 92.0000, y: 323.2330))
        path.addCurve(to: CGPoint(x: 92.0000, y: 288.0980),
                      control1: CGPoint(x: 92.0000, y: 298.2550),
                      control2: CGPoint(x: 92.0000, y: 293.1760))
        path.addCurve(to: CGPoint(x: 98.0606, y: 272.9460),
                      control1: CGPoint(x: 92.0000, y: 282.2960),
                      control2: CGPoint(x: 96.2226, y: 278.0010))
        path.addCurve(to: CGPoint(x: 114.0540, y: 250.3030),
                      control1: CGPoint(x: 100.8910, y: 265.1620),
                      control2: CGPoint(x: 106.0740, y: 253.9300))
        path.addCurve(to: CGPoint(x: 134.4240, y: 235.2360),
                      control1: CGPoint(x: 120.0890, y: 247.5600),
                      control2: CGPoint(x: 131.1360, y: 240.9910))
        path.addCurve(to: CGPoint(x: 148.0610, y: 224.6300),
                      control1: CGPoint(x: 136.5770, y: 231.4680),
                      control2: CGPoint(x: 144.4810, y: 227.4420))
        path.addCurve(to: CGPoint(x: 156.4780, y: 216.2120),
                      control1: CGPoint(x: 150.9790, y: 222.3370),
                      control2: CGPoint(x: 153.3510, y: 217.9990))
        path.addCurve(to: CGPoint(x: 163.9700, y: 196.5150),
                      control1: CGPoint(x: 160.4120, y: 213.9640),
                      control2: CGPoint(x: 169.7540, y: 201.1430))
        path.addCurve(to: CGPoint(x: 144.6940, y: 181.3640),
                      control1: CGPoint(x: 157.9220, y: 191.6770),
                      control2: CGPoint(x: 148.7970, y: 188.3390))
        path.addCurve(to: CGPoint(x: 126.8480, y: 176.8180),
                      control1: CGPoint(x: 142.3800, y: 177.4300),
                      control2: CGPoint(x: 126.8480, y: 171.2780))
        path.addCurve(to: CGPoint(x: 114.7270, y: 190.4550),
                      control1: CGPoint(x: 126.8480, y: 184.5090),
                      control2: CGPoint(x: 122.2310, y: 190.4550))
        path.addCurve(to: CGPoint(x: 92.0000, y: 193.4850),
                      control1: CGPoint(x: 107.2930, y: 190.4550),
                      control2: CGPoint(x: 100.0190, y: 193.4850))
        path.addCurve(to: CGPoint(x: 73.8182, y: 179.0910),
                      control1: CGPoint(x: 85.4214, y: 193.4850),
                      control2: CGPoint(x: 73.8182, y: 186.4030))
        path.addCurve(to: CGPoint(x: 86.6128, y: 167.6430),
                      control1: CGPoint(x: 73.8182, y: 171.1200),
                      control2: CGPoint(x: 79.5370, y: 169.6650))
        path.addCurve(to: CGPoint(x: 93.4310, y: 157.9630),
                      control1: CGPoint(x: 88.8133, y: 167.0140),
                      control2: CGPoint(x: 94.0159, y: 160.0100))
        path.addCurve(to: CGPoint(x: 88.2963, y: 153.2490),
                      control1: CGPoint(x: 92.5066, y: 154.7280),
                      control2: CGPoint(x: 89.4172, y: 154.3700))
        path.addCurve(to: CGPoint(x: 81.4781, y: 147.1890),
                      control1: CGPoint(x: 87.4450, y: 152.3980),
                      control2: CGPoint(x: 81.5436, y: 147.4180))
        path.addCurve(to: CGPoint(x: 78.2795, y: 132.1210),
                      control1: CGPoint(x: 80.1045, y: 142.3810),
                      control2: CGPoint(x: 79.3831, y: 137.0870))
        path.addCurve(to: CGPoint(x: 61.6970, y: 119.2420),
                      control1: CGPoint(x: 76.6115, y: 124.6150),
                      control2: CGPoint(x: 68.7445, y: 119.2420))
        path.move(to: CGPoint(x: 61.6969, y: 119.2420))
        path.addCurve(to: CGPoint(x: 50.3333, y: 91.2121),
                      control1: CGPoint(x: 61.1605, y: 109.5870),
                      control2: CGPoint(x: 53.8250, y: 100.1350))
        path.addCurve(to: CGPoint(x: 36.6969, y: 59.3097),
                      control1: CGPoint(x: 46.0999, y: 80.3934),
                      control2: CGPoint(x: 41.4404, y: 69.8913))
        path.addCurve(to: CGPoint(x: 19.6094, y: 34.3939),
                      control1: CGPoint(x: 32.0963, y: 49.0468),
                      control2: CGPoint(x: 26.3508, y: 43.0614))
        path.addCurve(to: CGPoint(x: 7.1515, y: 23.7878),
                      control1: CGPoint(x: 16.0095, y: 29.7654),
                      control2: CGPoint(x: 13.1782, y: 23.7878))
        path.move(to: CGPoint(x: 92.0000, y: 155.6060))
        path.addCurve(to: CGPoint(x: 101.0910, y: 161.3300),
                      control1: CGPoint(x: 94.6191, y: 155.9330),
                      control2: CGPoint(x: 98.5224, y: 159.9700))
        path.addCurve(to: CGPoint(x: 112.4550, y: 166.2960),
                      control1: CGPoint(x: 104.9150, y: 163.3540),
                      control2: CGPoint(x: 107.9680, y: 165.2990))
        path.addCurve(to: CGPoint(x: 140.4850, y: 167.7270),
                      control1: CGPoint(x: 121.4900, y: 168.3040),
                      control2: CGPoint(x: 131.0180, y: 167.7270))
        path.addCurve(to: CGPoint(x: 160.9390, y: 157.1210),
                      control1: CGPoint(x: 150.6820, y: 167.7270),
                      control2: CGPoint(x: 153.8280, y: 162.8100))
        path.addCurve(to: CGPoint(x: 176.8480, y: 140.4540),
                      control1: CGPoint(x: 165.1480, y: 153.7540),
                      control2: CGPoint(x: 175.1410, y: 145.5760))
        path.move(to: CGPoint(x: 216.2420, y: 111.6670))
        path.addCurve(to: CGPoint(x: 202.6060, y: 98.0303),
                      control1: CGPoint(x: 208.9060, y: 111.6670),
                      control2: CGPoint(x: 204.4200, y: 104.3800))
        path.addCurve(to: CGPoint(x: 204.1210, y: 72.2727),
                      control1: CGPoint(x: 201.0000, y: 92.4097),
                      control2: CGPoint(x: 197.4940, y: 74.4818))
        path.move(to: CGPoint(x: 202.6060, y: 75.3030))
        path.addCurve(to: CGPoint(x: 214.7270, y: 66.2121),
                      control1: CGPoint(x: 203.0840, y: 71.4755),
                      control2: CGPoint(x: 211.2060, y: 66.0165))
        path.addCurve(to: CGPoint(x: 223.8180, y: 79.8484),
                      control1: CGPoint(x: 221.3510, y: 66.5801),
                      control2: CGPoint(x: 223.5270, y: 74.9000))
        path.addCurve(to: CGPoint(x: 217.7580, y: 107.1210),
                      control1: CGPoint(x: 224.2550, y: 87.2805),
                      control2: CGPoint(x: 230.8150, y: 107.1210))
        path.move(to: CGPoint(x: 205.6360, y: 79.8485))
        path.addCurve(to: CGPoint(x: 214.7270, y: 85.1515),
                      control1: CGPoint(x: 210.1470, y: 79.8485),
                      control2: CGPoint(x: 214.7270, y: 79.0968))
        path.addCurve(to: CGPoint(x: 211.3600, y: 94.6633),
                      control1: CGPoint(x: 214.7270, y: 89.4209),
                      control2: CGPoint(x: 214.8460, y: 91.8745))
        path.addCurve(to: CGPoint(x: 205.7210, y: 94.2424),
                      control1: CGPoint(x: 209.1180, y: 96.4570),
                      control2: CGPoint(x: 204.5080, y: 99.6967))
        path.addCurve(to: CGPoint(x: 208.5820, y: 92.6431),
                      control1: CGPoint(x: 206.5630, y: 90.4514),
                      control2: CGPoint(x: 210.6320, y: 85.4700))
        path.addCurve(to: CGPoint(x: 209.0030, y: 83.2155),
                      control1: CGPoint(x: 208.4450, y: 93.1257),
                      control2: CGPoint(x: 206.0900, y: 86.4521))
        path.addCurve(to: CGPoint(x: 207.1510, y: 82.1212),
                      control1: CGPoint(x: 214.1270, y: 77.5221),
                      control2: CGPoint(x: 207.1510, y: 88.6981))
        path.addCurve(to: CGPoint(x: 205.6360, y: 85.9091),
                      control1: CGPoint(x: 207.1510, y: 75.5640),
                      control2: CGPoint(x: 205.6360, y: 87.9913))
        path.addCurve(to: CGPoint(x: 210.1820, y: 85.9091),
                      control1: CGPoint(x: 205.6360, y: 82.5288),
                      control2: CGPoint(x: 204.9580, y: 88.5211))
        path.move(to: CGPoint(x: 211.6970, y: 82.8788))
        path.addLine(to: CGPoint(x: 211.6970, y: 87.4242))
        path.move(to: CGPoint(x: 352.6060, y: 120.7580))
        path.addCurve(to: CGPoint(x: 328.3640, y: 107.4580),
                      control1: CGPoint(x: 342.3310, y: 120.7580),
                      control2: CGPoint(x: 336.9460, y: 112.0010))
        path.addCurve(to: CGPoint(x: 319.1890, y: 98.7878),
                      control1: CGPoint(x: 324.8220, y: 105.5830),
                      control2: CGPoint(x: 320.0650, y: 102.7340))
        path.addCurve(to: CGPoint(x: 313.2120, y: 87.4242),
                      control1: CGPoint(x: 318.4830, y: 95.6148),
                      control2: CGPoint(x: 315.9700, y: 88.8031))
        path.move(to: CGPoint(x: 299.5760, y: 340.4550))
        path.addCurve(to: CGPoint(x: 270.7880, y: 327.6600),
                      control1: CGPoint(x: 288.5110, y: 340.4550),
                      control2: CGPoint(x: 276.5260, y: 337.7020))
        path.addCurve(to: CGPoint(x: 277.1850, y: 296.8520),
                      control1: CGPoint(x: 264.4720, y: 316.6070),
                      control2: CGPoint(x: 269.6600, y: 306.2590))
        path.addCurve(to: CGPoint(x: 279.9630, y: 280.6900),
                      control1: CGPoint(x: 280.7010, y: 292.4570),
                      control2: CGPoint(x: 278.4550, y: 285.9680))
        path.addCurve(to: CGPoint(x: 281.3940, y: 258.7210),
                      control1: CGPoint(x: 281.8870, y: 273.9550),
                      control2: CGPoint(x: 281.3940, y: 266.2380))
        path.addCurve(to: CGPoint(x: 272.3030, y: 222.2730),
                      control1: CGPoint(x: 281.3940, y: 246.2010),
                      control2: CGPoint(x: 272.3030, y: 235.6590))
        path.move(to: CGPoint(x: 42.0000, y: 76.8182))
        path.addCurve(to: CGPoint(x: 73.8182, y: 60.1515),
                      control1: CGPoint(x: 54.3988, y: 76.8182),
                      control2: CGPoint(x: 69.3358, y: 73.5985))
        path.move(to: CGPoint(x: 19.2727, y: 8.6363))
        path.addLine(to: CGPoint(x: 19.2727, y: 35.9091))
        path.move(to: CGPoint(x: 31.3939, y: 11.6666))
        path.addCurve(to: CGPoint(x: 29.8788, y: 49.5454),
                      control1: CGPoint(x: 31.3939, y: 24.6216),
                      control2: CGPoint(x: 29.8788, y: 36.8361))
        path.move(to: CGPoint(x: 49.5757, y: 19.2424))
        path.addCurve(to: CGPoint(x: 46.5454, y: 69.2424),
                      control1: CGPoint(x: 49.5757, y: 36.2229),
                      control2: CGPoint(x: 46.5454, y: 52.4379))
        path.move(to: CGPoint(x: 61.6969, y: 49.5454))
        path.addCurve(to: CGPoint(x: 58.6666, y: 70.7575),
                      control1: CGPoint(x: 61.6969, y: 56.6922),
                      control2: CGPoint(x: 58.6666, y: 63.7633))
        return path
    }
}

#Preview {
    ChibakunView()
}
