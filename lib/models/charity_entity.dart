class Charity{
  final int id;
  final String name;
  final String description;
  final String imageUrl;
  final String address;
  final String organizer;
  final String startDate;
  final String endDate;
  final double totalRaised;

  const Charity({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.address,
    required this.organizer,
    required this.startDate,
    required this.endDate,
    required this.totalRaised
  });
}

