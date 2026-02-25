(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ "42" y)))

(assert (str.in_re x (re.++ (re.++ (re.++ (re.* (re.range "0" "9")) (str.to_re "85")) (str.to_re "554")) (str.to_re "4"))))
(assert (str.in_re y (re.* (re.++ (re.+ (str.to_re "1")) (re.* (re.range "0" "8"))))))

(assert (<= (+ (* 10 (str.len y)) (* 8 (str.to_int x))) 44))
(assert (<= (+ (str.len y) (* 6 (str.to_int x))) 52))

(check-sat)