(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.++ (str.to_re "72") (re.++ (str.to_re "827") (re.+ (str.to_re "4")))) (str.to_re "172"))))

(assert (<= (* (- 4) (str.len x)) 27))
(assert (<= (* 10 (str.len x)) 58))
(assert (> (* (- 4) (str.len x)) 9))
(assert (< (* (- 4) (str.to_int x)) 96))

(check-sat)