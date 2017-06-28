Connect-MsolService
get-msoluser –returndeletedusers -maxresults 100000 | remove-msoluser -removefromrecyclebin -force