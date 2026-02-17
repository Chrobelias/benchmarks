(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (re.* (str.to_re "44")) (re.+ (str.to_re "752")))))

(assert (< (str.to_int x) 97))
(assert (> (+ (str.len x) (* 3 (str.to_int x))) 53))

(check-sat)