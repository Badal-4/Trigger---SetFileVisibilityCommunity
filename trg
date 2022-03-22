trigger SetFileVisibility on ContentDocumentLink (before insert, before update) {
    System.debug('inside this trigger111');
    for (ContentDocumentLink cdl : Trigger.new) {
        cdl.visibility = 'AllUsers';
    }
}
