(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (str.to_re "595") (re.+ (str.to_re "535")))))

(assert (>= (* (- 10) (str.len x)) 0))
(assert (= (* (- 9) (str.to_int x)) 87))

(check-sat)