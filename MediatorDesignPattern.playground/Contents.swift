import Foundation

enum DispatcherEvent {
    case helicopterFlewBy
    case planeFlewBy
    case muleFlewBy
}

protocol Mediator {
    func notify(sender: Component, event: DispatcherEvent)
}

protocol Component {
    var controller: Mediator? { get set }
}

final class Helicopter: Component {
    var controller: Mediator?
    
    var landed = false
    
    func flyingAboveAeroport() {
        print("helicopter flew above aeroport")
        controller?.notify(sender: self, event: .helicopterFlewBy)
    }
}


final class Plane: Component {
    var controller: Mediator?
    
    var landed = false
    
    func flyingAboveAeroport() {
        print("plane flew above aeroport")
        controller?.notify(sender: self, event: .planeFlewBy)
    }
}


final class Mule: Component {
    var controller: Mediator?
    
    var landed = false
    
    func flyingAboveAeroport() {
        print("mule flew above aeroport")
        controller?.notify(sender: self, event: .muleFlewBy)
    }
}

final class DispatcherController: Mediator {
    
    var mule: Mule
    var plane: Plane
    var helicopter: Helicopter
    
    init(mule: Mule, plane: Plane, helicopter: Helicopter) {
        self.mule = mule
        self.plane = plane
        self.helicopter = helicopter
    }
    
    func notify(sender: Component, event: DispatcherEvent) {
        switch event {
        case .helicopterFlewBy:
            helicopter.landed = true
            print("helicopter landed")
        case .planeFlewBy:
            plane.landed = true
            print("plane landed")
        case .muleFlewBy:
            mule.landed = true
            print("mule landed")
        default:
            print("well")
        }
    }
}

var mule = Mule()
var plane = Plane()
var helicopter = Helicopter()

var dispatcher = DispatcherController(mule: mule, plane: plane, helicopter: helicopter)

mule.controller = dispatcher
plane.controller = dispatcher
helicopter.controller = dispatcher

mule.flyingAboveAeroport()
plane.flyingAboveAeroport()
helicopter.flyingAboveAeroport()

