(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.++ (str.to_re "2") (re.union (re.+ (str.to_re "59")) (str.to_re "19"))) (str.to_re "88"))))

(assert (< (* 3 (str.len x)) 88))
(assert (>= (* 8 (str.to_int x)) 78))

(check-sat)