(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.union (re.* (str.to_re "29")) (re.++ (re.+ (str.to_re "181")) (str.to_re "155")))))

(assert (> (str.to_int x) 2))
(assert (< (* 2 (str.len x)) 84))
(assert (< (* (- 5) (str.len x)) 18))

(check-sat)