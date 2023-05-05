


SELECT TOP (1000) [QuestionId] ,
       q.[Name]
      ,q.[Comment]
      ,q.[Difficulty]
      ,q.[Repeat]
      ,q.[IsLearned]
      ,q.[QuestionNumber]
      ,q.[IsFirstAnswerCorrect]
      ,q.[TestRefId]
      ,q.[RefTypeQuestionId]
      ,q.[IsSliderTagged]
  FROM [dbo].[Question] q 
  inner join Test t
  on q.TestRefId = t.TestId
  where t.TestId = 136 
  order by Difficulty desc