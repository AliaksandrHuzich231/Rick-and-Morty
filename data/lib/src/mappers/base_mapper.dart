abstract interface class Mapper<Entity, Model> {
  const Mapper();

  Model fromEntity(Entity entity);

  Entity toEntity(Model model);
}

extension ListMapper<Entity, Model> on Mapper<Entity, Model> {
  List<Model> fromList(List<Entity>? entities) {
    return entities?.map(fromEntity).toList() ?? <Model>[];
  }

  List<Entity> toList(List<Model> models) {
    return models.map(toEntity).toList();
  }
}
