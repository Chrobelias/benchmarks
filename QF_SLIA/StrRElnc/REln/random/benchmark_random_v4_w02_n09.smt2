(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re z (re.++ (str.to_re "30") (re.* (re.++ (re.range "3" "9") (str.to_re "699"))))))
(assert (str.in_re y (re.+ (re.union (str.to_re "405") (re.union (re.range "1" "7") (str.to_re "332"))))))
(assert (str.in_re a (re.union (str.to_re "56") (re.++ (re.+ (str.to_re "6")) (str.to_re "39")))))
(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "277")) (re.+ (str.to_re "59"))) (re.range "5" "8"))))

(assert (= (+ (* 10 (str.len y)) (* 8 (str.to_int z))) 51))

(check-sat)