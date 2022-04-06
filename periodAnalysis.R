waste <- read.csv("Wastewater/Ottawa/Data/wastewater_virus.csv")
a <- waste$covN1_nPMMoV_meanNr
a <- tail(a, 60)
plot(a)
lines(a)
b <- diff(a, differences = 2)

plot(b)

c <- spectrum(x = b)

pdf("periodImportance.pdf")
plot(1/c$freq[2:9], c$spec[2:9], xlab = "Period", ylab = "Spectrum")
lines(1/c$freq[2:9], c$spec[2:9])
dev.off()
