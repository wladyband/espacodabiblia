import { EntityRepository, In, Repository } from 'typeorm';
import Question from '../entities/question';

interface IFindProducts {
  id: string;
}

@EntityRepository(Question)
class QuestionRepository extends Repository<Question> {
  public async findByName(question_title: string): Promise<Question | undefined> {
    const question = this.findOne({
      where: {
        question_title,
      },
    });

    return question;
  }

}

export default QuestionRepository;
