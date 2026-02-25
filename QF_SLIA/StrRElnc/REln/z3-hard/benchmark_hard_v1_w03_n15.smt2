(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.union (str.to_re "577") (re.* (str.to_re "441"))) (str.to_re "148"))))

(assert (<= (* 2 (str.to_int x)) 24))
(assert (> (+ (str.len x) (* 5 (str.to_int x))) 93))

(check-sat)