## Description


## Reproduction Steps


## References


## Remediation Advice

Ensure that copy/paste functionality is disabled on sensitive content like credit card numbers, social security numbers etc. as other apps on the same device can access data stored in clipboard.
The example below disables clipboard for the `textField` TextView in Android:
```java
textField.setCustomSelectionActionModeCallback(new ActionMode.Callback() {
  public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
    return false;
  }

  public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
    return false;
  }

  public boolean onActionItemClicked(ActionMode actionMode, MenuItem item) {
    return false;
  }

  public void onDestroyActionMode(ActionMode actionMode) {
  }
});
textField.setLongClickable(false);
textField.setTextIsSelectable(false);
```
The example below disables clipboard for UITextField in iOS:
```swift
override public func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
  if action == #selector(copy(_:)) || action == #selector(paste(_:)) {
    return false
  }
  return true
}
```

