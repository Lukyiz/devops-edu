trigger AccTrigDesc on Account (before insert) {
//    AccountUpdateDescription.updateDescription();
    for (Account newAcc : Trigger.new) {
        newAcc.Name = newAcc.Name + '_addedDesc';
        System.debug('LTE accsToUpdate: ' + newAcc.Name);
    }
}