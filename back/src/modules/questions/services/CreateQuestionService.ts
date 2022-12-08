import AppError from '@shared/errors/AppError';
import internal from 'stream';
import { getCustomRepository } from 'typeorm';
import Question from '../typeorm/entities/question';
import QuestionRepository from '../typeorm/repositories/QuestionRepository';

interface IRequest {
  question_details: string;
  question_title: string;
  option_a: number;
  option_b: number;
  option_c: number;
  option_d: number;
  option_e: number;
  answer_details: string;
  question_status: number;
  user_status: number;
}

class CreateQuestionService {
  public async execute({
    question_details,
    question_title,
    option_a,
    option_b,
    option_c,
    option_d,
    option_e,
    answer_details,
    question_status,
    user_status,
  }: IRequest): Promise<Question> {
    const questionRepository = getCustomRepository(QuestionRepository);
    const questionExists = await questionRepository.findByName(question_title);

    if (questionExists) {
      throw new AppError('Já existe um questão com esse titulo');
    }

    const question = questionRepository.create({
      question_details,
      question_title,
      option_a,
      option_b,
      option_c,
      option_d,
      option_e,
      answer_details,
      question_status,
      user_status,
    });

    await questionRepository.save(question);

    return question;
  }
}

export default CreateQuestionService;
