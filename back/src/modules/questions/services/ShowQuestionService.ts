import AppError from '@shared/errors/AppError';
import { getCustomRepository } from 'typeorm';
import Question from '../typeorm/entities/question';
import QuestionRepository from '../typeorm/repositories/QuestionRepository';

interface IRequest {
  codigo: string;
}

class ShowQuestionService {
  public async execute({ codigo }: IRequest): Promise<Question> {
    const questionRepository = getCustomRepository(QuestionRepository);

    const question = await questionRepository.findOne(codigo);

    if (!question) {
      throw new AppError('Não foi localizado a questão.');
    }

    return question;
  }
}

export default ShowQuestionService;
