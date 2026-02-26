(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= z (str.++ "68" "15" a y "66" x)))

(assert (str.in_re y (re.++ (str.to_re "456") (re.+ (re.union (re.+ (str.to_re "77")) (str.to_re "951"))))))
(assert (str.in_re a (re.++ (re.range "0" "9") (re.* (re.+ (str.to_re "890"))))))
(assert (str.in_re x (re.* (re.union (re.* (re.range "7" "9")) (re.+ (str.to_re "64"))))))
(assert (str.in_re z (re.union (re.++ (re.* (re.range "0" "9")) (re.range "2" "9")) (re.range "1" "7"))))

(assert (<= (+ (* (- 9) (str.to_int x)) (str.to_int y) (* 2 (str.to_int z)) (* (- 6) (str.to_int a))) 62))
(assert (>= (+ (str.len x) (* 4 (str.len y)) (* 7 (str.len z)) (* (- 6) (str.len a))) 91))

(check-sat)