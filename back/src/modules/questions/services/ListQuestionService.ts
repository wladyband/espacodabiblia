import { getCustomRepository } from 'typeorm';
import Question from '../typeorm/entities/question';
import QuestionRepository from '../typeorm/repositories/QuestionRepository';

class ListQuestionService {
  public async execute(): Promise<Question[]> {
    const questionRepository = getCustomRepository(QuestionRepository);

    const question = await questionRepository.find();

    return question;
  }
}

export default ListQuestionService;
