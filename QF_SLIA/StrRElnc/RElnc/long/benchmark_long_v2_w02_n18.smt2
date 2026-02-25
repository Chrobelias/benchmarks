(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= x (str.++ y "57")))

(assert (str.in_re x (re.++ (re.* (re.range "4" "9")) (re.* (re.+ (str.to_re "903"))))))
(assert (str.in_re y (re.union (re.+ (re.range "6" "9")) (str.to_re "141"))))

(assert (<= (+ (* 8 (str.len x)) (* 4 (str.to_int x))) 23))

(check-sat)