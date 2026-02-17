(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.union (re.* (str.to_re "6")) (str.to_re "17")))))

(assert (> (* 6 (str.len x)) 58))
(assert (= (+ (str.len x) (* (- 7) (str.to_int x))) 92))

(check-sat)