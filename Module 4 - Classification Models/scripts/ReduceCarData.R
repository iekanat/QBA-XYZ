### Script to reduce size of EPA data. ###

# I want the tree to be of manageable size.
# I will reduce the number of years in the dataset.
# And reduce the number of levels in the outcome variable.
# I record the procedure in a script for reproducibility.


vehicles <- read.csv("data/vehicles.csv")

# Reduce Years (Goes from 40+K to 4K)
vehicles <- vehicles[vehicles$year %in% c(1990, 2000, 2010, 2018),]

# Reduce Vehicle Class
vehicles <- vehicles[vehicles$VClass %in% c("Subcompact Cars", "Standard Pickup Trucks 4WD", "Minivan - 2WD"),]


# Save New Data
write.csv(vehicles, file = "data/vehiclesSub.csv", row.names = F)
