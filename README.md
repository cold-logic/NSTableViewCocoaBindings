# NSTableViewCocoaBindings

A little project I put together to document how to use an NSTableView with swift, cocoa bindings and storyboards on macOS

## Cocoa Bindings

Open `Main.storyboard`:

Open Xcode's Bindings Inspector (looks like a little maze icon in the right toolbar pane)

These bindings should be established:

The *Array Controller* has it's "Content" binding bound to *View Controller* with the model key path set to "peopleArray". This is the NSArray defined in `ViewController.swift`.

The *Table* has it's "Content" binding bound to the *Array Controller* with a controller key of "arrangedObjects"

Lastly each of the *Table View Cells* have their "Value" bindings bound to *Table Cell View* with a model key path of "objectValue.firstName" and "objectValue.lastName" respectively.
